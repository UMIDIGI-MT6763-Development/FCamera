.class public Lcom/freeme/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdk;->enableDebugLog(Z)V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1c595fa8596642be-03-7h9fr1"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/TuSdk;->init(Landroid/content/Context;Ljava/lang/String;)Lorg/lasque/tusdk/core/TuSdk;

    return-void
.end method
