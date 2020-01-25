.class Lcom/freeme/camera/CameraActivity$ScreenHandler;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenHandler"
.end annotation


# instance fields
.field private activityReference:Lcom/freeme/camera/CameraActivity;

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/freeme/camera/CameraActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->weakReference:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Lcom/freeme/camera/CameraActivity;->access$400(Lcom/freeme/camera/CameraActivity;)V

    goto :goto_1

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Lcom/freeme/camera/CameraActivity;->access$200(Lcom/freeme/camera/CameraActivity;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Lcom/freeme/camera/CameraActivity;->access$300(Lcom/freeme/camera/CameraActivity;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-static {p1}, Lcom/freeme/camera/CameraActivity;->access$100(Lcom/freeme/camera/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getAutoExitValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getAutoExitValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity$ScreenHandler;->activityReference:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
