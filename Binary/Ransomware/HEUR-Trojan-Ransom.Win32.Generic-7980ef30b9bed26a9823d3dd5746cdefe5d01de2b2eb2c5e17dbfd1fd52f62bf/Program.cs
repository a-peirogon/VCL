﻿// Decompiled with JetBrains decompiler
// Type: fuckunicorn.Program
// Assembly: IMMUNI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: 8F54C700-FA0D-46F7-BC53-7208912E7089
// Assembly location: C:\Users\Administrateur\Desktop\7980ef30b9bed26a9823d3dd5746cdefe5d01de2b2eb2c5e17dbfd1fd52f62bf.exe

using System;
using System.Windows.Forms;

namespace fuckunicorn
{
  internal static class Program
  {
    [STAThread]
    private static void Main()
    {
      Application.EnableVisualStyles();
      Application.SetCompatibleTextRenderingDefault(false);
      Application.Run((Form) new Form1());
    }
  }
}
