.class final enum Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;
.super Ljava/lang/Enum;
.source "FocusCaptureRequestConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FocusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

.field public static final enum AUTO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

.field public static final enum CONTINUOUS_PICTURE:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

.field public static final enum CONTINUOUS_VIDEO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

.field public static final enum EDOF:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

.field public static final enum INFINITY:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

.field public static final enum MACRO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const-string v1, "INFINITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->INFINITY:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const-string v1, "AUTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->AUTO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const-string v1, "MACRO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->MACRO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const-string v1, "CONTINUOUS_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_VIDEO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const-string v1, "CONTINUOUS_PICTURE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_PICTURE:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const-string v1, "EDOF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->EDOF:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->INFINITY:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->AUTO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->MACRO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_VIDEO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_PICTURE:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->EDOF:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

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

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->mValue:I

    iput p3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->$VALUES:[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->mValue:I

    return v0
.end method
