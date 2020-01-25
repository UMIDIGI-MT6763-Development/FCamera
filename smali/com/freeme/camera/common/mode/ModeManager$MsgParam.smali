.class Lcom/freeme/camera/common/mode/ModeManager$MsgParam;
.super Ljava/lang/Object;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgParam"
.end annotation


# instance fields
.field public mMode:Lcom/freeme/camera/common/mode/ICameraMode;

.field public mObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/freeme/camera/common/mode/ModeManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ICameraMode;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iput-object p3, p0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mObj:Ljava/lang/Object;

    return-void
.end method
