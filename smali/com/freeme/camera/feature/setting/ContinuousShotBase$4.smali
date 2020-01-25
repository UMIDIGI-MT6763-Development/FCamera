.class synthetic Lcom/freeme/camera/feature/setting/ContinuousShotBase$4;
.super Ljava/lang/Object;
.source "ContinuousShotBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ContinuousShotBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$freeme$camera$common$memory$IMemoryManager$MemoryAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->values()[Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$4;->$SwitchMap$com$freeme$camera$common$memory$IMemoryManager$MemoryAction:[I

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$4;->$SwitchMap$com$freeme$camera$common$memory$IMemoryManager$MemoryAction:[I

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-virtual {v1}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$4;->$SwitchMap$com$freeme$camera$common$memory$IMemoryManager$MemoryAction:[I

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-virtual {v1}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
