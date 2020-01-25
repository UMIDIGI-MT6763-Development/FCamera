.class Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1$1;
.super Ljava/lang/Object;
.source "MicroPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->onItemViewClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1$1;->this$1:Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1$1;->this$1:Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/microphone/MicroPhone$1;->this$0:Lcom/freeme/camera/feature/setting/microphone/MicroPhone;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/microphone/MicroPhone;->access$200(Lcom/freeme/camera/feature/setting/microphone/MicroPhone;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void
.end method
