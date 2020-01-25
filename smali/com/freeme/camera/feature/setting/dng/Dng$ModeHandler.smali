.class Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;
.super Landroid/os/Handler;
.source "Dng.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/Dng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/Dng;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/dng/Dng;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$1200(Lcom/freeme/camera/feature/setting/dng/Dng;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->access$1100(Lcom/freeme/camera/feature/setting/dng/Dng;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
