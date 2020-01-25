.class final enum Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;
.super Ljava/lang/Enum;
.source "AntiFlickerCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

.field public static final enum AUTO:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

.field public static final enum HZ_50:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

.field public static final enum HZ_60:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

.field public static final enum OFF:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    const-string v1, "HZ_50"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_50:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    const-string v1, "HZ_60"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_60:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    const-string v1, "AUTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->AUTO:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    sget-object v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->OFF:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_50:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->HZ_60:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->AUTO:Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

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

    iput p1, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->mValue:I

    iput p3, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/antiflicker/AntiFlickerCaptureRequestConfig$ModeEnum;->mValue:I

    return v0
.end method
