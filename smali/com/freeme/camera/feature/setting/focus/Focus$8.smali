.class Lcom/freeme/camera/feature/setting/focus/Focus$8;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$8;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;J)V
    .locals 0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$8;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
