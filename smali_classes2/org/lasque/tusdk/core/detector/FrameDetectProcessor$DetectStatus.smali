.class public final enum Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DetectBusy:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

.field public static final enum DetectIdle:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    const-string v1, "DetectIdle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectIdle:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    new-instance v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    const-string v1, "DetectBusy"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectBusy:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    sget-object v1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectIdle:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectBusy:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->a:[Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->a:[Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    return-object v0
.end method
