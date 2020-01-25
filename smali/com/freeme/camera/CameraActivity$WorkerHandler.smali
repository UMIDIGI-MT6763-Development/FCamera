.class public Lcom/freeme/camera/CameraActivity$WorkerHandler;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/CameraActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity$WorkerHandler;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$WorkerHandler;->this$0:Lcom/freeme/camera/CameraActivity;

    new-instance v0, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p1, Lcom/freeme/camera/CameraActivity;->mPluginManagerAgent:Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$WorkerHandler;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freeme/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/freeme/camera/data/LocalData;)Z

    invoke-interface {p1}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-void

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/data/LocalData;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$WorkerHandler;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->init(Landroid/content/Context;)V

    :cond_1
    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
