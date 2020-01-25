.class Lcom/freeme/camera/CameraActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity$3;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const-string p1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    const/16 p2, 0xf

    if-gt p1, p2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity$3;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {v0}, Lcom/freeme/camera/CameraActivity;->access$900(Lcom/freeme/camera/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$3;->this$0:Lcom/freeme/camera/CameraActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/CameraActivity;->access$902(Lcom/freeme/camera/CameraActivity;Z)Z

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$3;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Lcom/freeme/camera/CameraActivity;->access$900(Lcom/freeme/camera/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$3;->this$0:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1, v1}, Lcom/freeme/camera/CameraActivity;->access$902(Lcom/freeme/camera/CameraActivity;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
