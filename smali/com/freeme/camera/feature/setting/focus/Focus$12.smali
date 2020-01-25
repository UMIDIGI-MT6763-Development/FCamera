.class Lcom/freeme/camera/feature/setting/focus/Focus$12;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;->onFocusStateUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$12;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$12;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1200(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$12;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1300(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$12;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5300(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$12;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$12;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method
