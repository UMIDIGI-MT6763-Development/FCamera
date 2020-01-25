.class public final enum Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
.super Ljava/lang/Enum;
.source "IMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/memory/IMemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field public static final enum ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field public static final enum NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

.field public static final enum STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    new-instance v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    const-string v1, "ADJUST_SPEED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    new-instance v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    const-string v1, "STOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->NORMAL:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ADJUST_SPEED:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->STOP:Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->$VALUES:[Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->$VALUES:[Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;

    return-object v0
.end method
