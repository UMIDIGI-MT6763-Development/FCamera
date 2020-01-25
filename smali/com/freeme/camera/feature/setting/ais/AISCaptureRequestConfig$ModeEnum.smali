.class final enum Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;
.super Ljava/lang/Enum;
.source "AISCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

.field public static final enum AIS:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

.field public static final enum AUTO:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

.field public static final enum MFLL:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

.field public static final enum OFF:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    const-string v1, "MFLL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->MFLL:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    const-string v1, "AIS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->AIS:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    const-string v1, "AUTO"

    const/4 v5, 0x3

    const/16 v6, 0xff

    invoke-direct {v0, v1, v5, v6}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->AUTO:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    sget-object v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->MFLL:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->AIS:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->AUTO:Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

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

    iput p1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->mValue:I

    iput p3, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->mValue:I

    return v0
.end method
