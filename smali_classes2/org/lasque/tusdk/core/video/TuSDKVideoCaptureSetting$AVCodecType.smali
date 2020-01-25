.class public final enum Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

.field public static final enum HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

.field public static final enum SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    const-string v1, "HW_CODEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    const-string v1, "SW_CODEC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    new-instance v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    const-string v1, "CUSTOM_CODEC"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->CUSTOM_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->CUSTOM_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->a:[Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->a:[Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    return-object v0
.end method
