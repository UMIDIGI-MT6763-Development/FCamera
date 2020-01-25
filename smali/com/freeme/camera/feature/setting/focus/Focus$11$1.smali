.class Lcom/freeme/camera/feature/setting/focus/Focus$11$1;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus$11;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/focus/Focus$11;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus$11;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11$1;->this$1:Lcom/freeme/camera/feature/setting/focus/Focus$11;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->setWaitCancelAutoFocus(Z)V

    return-void
.end method
