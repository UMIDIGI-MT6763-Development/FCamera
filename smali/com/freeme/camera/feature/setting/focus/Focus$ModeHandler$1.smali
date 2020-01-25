.class Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler$1;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3800(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4000(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    return-void
.end method
