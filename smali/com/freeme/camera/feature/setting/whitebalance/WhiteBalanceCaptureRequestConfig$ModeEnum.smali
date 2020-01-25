.class final enum Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;
.super Ljava/lang/Enum;
.source "WhiteBalanceCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum AUTO:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum DAYLIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum FLUORESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum INCANDESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum OFF:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum SHADE:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum TWILIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

.field public static final enum WARM_FLUORESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "AUTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->AUTO:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "INCANDESCENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->INCANDESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "FLUORESCENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->FLUORESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "WARM_FLUORESCENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->WARM_FLUORESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "DAYLIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->DAYLIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "CLOUDY_DAYLIGHT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->CLOUDY_DAYLIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "TWILIGHT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->TWILIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const-string v1, "SHADE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->SHADE:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->AUTO:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->INCANDESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->FLUORESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->WARM_FLUORESCENT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->DAYLIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->CLOUDY_DAYLIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->TWILIGHT:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->SHADE:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v10

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->mValue:I

    iput p3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceCaptureRequestConfig$ModeEnum;->mValue:I

    return v0
.end method
