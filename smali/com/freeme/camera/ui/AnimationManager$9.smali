.class synthetic Lcom/freeme/camera/ui/AnimationManager$9;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/IAppUi$AnimationType;->values()[Lcom/freeme/camera/common/IAppUi$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    :try_start_0
    sget-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-virtual {v1}, Lcom/freeme/camera/common/IAppUi$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-virtual {v1}, Lcom/freeme/camera/common/IAppUi$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/freeme/camera/ui/AnimationManager$9;->$SwitchMap$com$freeme$camera$common$IAppUi$AnimationType:[I

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-virtual {v1}, Lcom/freeme/camera/common/IAppUi$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
