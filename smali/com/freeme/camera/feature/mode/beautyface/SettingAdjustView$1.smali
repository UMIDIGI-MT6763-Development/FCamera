.class Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$1;
.super Landroid/os/Handler;
.source "SettingAdjustView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->hide()V

    :goto_0
    return-void
.end method
