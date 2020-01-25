.class Lcom/freeme/camera/feature/setting/focus/Focus$14;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;->onExposureViewStatusChanged(Z)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$14;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$14;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5600(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$14;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$14;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->cancelAutoFocus()V

    :goto_0
    return-void
.end method
