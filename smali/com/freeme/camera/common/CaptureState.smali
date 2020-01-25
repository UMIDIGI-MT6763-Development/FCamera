.class public final enum Lcom/freeme/camera/common/CaptureState;
.super Ljava/lang/Enum;
.source "CaptureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/CaptureState;

.field public static final enum FAIL:Lcom/freeme/camera/common/CaptureState;

.field public static final enum FINISH:Lcom/freeme/camera/common/CaptureState;

.field public static final enum START:Lcom/freeme/camera/common/CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/CaptureState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    new-instance v0, Lcom/freeme/camera/common/CaptureState;

    const-string v1, "FINISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    new-instance v0, Lcom/freeme/camera/common/CaptureState;

    const-string v1, "FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/common/CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/CaptureState;->FAIL:Lcom/freeme/camera/common/CaptureState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/common/CaptureState;

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->START:Lcom/freeme/camera/common/CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->FINISH:Lcom/freeme/camera/common/CaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/common/CaptureState;->FAIL:Lcom/freeme/camera/common/CaptureState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/freeme/camera/common/CaptureState;->$VALUES:[Lcom/freeme/camera/common/CaptureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/CaptureState;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/CaptureState;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/CaptureState;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/CaptureState;->$VALUES:[Lcom/freeme/camera/common/CaptureState;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/CaptureState;

    return-object v0
.end method
