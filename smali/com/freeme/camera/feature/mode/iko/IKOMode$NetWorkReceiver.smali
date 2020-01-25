.class Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IKOMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;Lcom/freeme/camera/feature/mode/iko/IKOMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;-><init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$NetWorkReceiver;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$3600(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z

    return-void
.end method
