.class Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;
.super Ljava/lang/Object;
.source "FocusParameterConfigure.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onAutoFocus] mFocusStateListener is null "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAutoFocus] success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object p1

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    invoke-interface {p1, v2, v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;->onFocusStatusUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object p1

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    invoke-interface {p1, v2, v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;->onFocusStatusUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;J)V

    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
