.class public Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;
.super Ljava/lang/Object;
.source "ApplictionImpl.java"

# interfaces
.implements Lcom/badlogic/gdx/Application;


# instance fields
.field private mAppListener:Lcom/badlogic/gdx/ApplicationListener;

.field private mFiles:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;

.field private mGraphicsImpl:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->mGraphicsImpl:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;

    new-instance v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->mFiles:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->mAppListener:Lcom/badlogic/gdx/ApplicationListener;

    return-void
.end method


# virtual methods
.method public addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->mAppListener:Lcom/badlogic/gdx/ApplicationListener;

    return-object v0
.end method

.method public getAudio()Lcom/badlogic/gdx/Audio;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipboard()Lcom/badlogic/gdx/utils/Clipboard;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFiles()Lcom/badlogic/gdx/Files;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->mFiles:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/AndroidFiles;

    return-object v0
.end method

.method public getGraphics()Lcom/badlogic/gdx/Graphics;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ApplictionImpl;->mGraphicsImpl:Lcom/freeme/camera/feature/mode/facecute/gdx/helper/GraphicsImpl;

    return-object v0
.end method

.method public getInput()Lcom/badlogic/gdx/Input;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaHeap()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLogLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNativeHeap()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNet()Lcom/badlogic/gdx/Net;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V
    .locals 0

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    return-void
.end method
