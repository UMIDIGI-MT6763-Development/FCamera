.class public final enum Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;
.super Ljava/lang/Enum;
.source "IExposure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/IExposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashFlow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

.field public static final enum FLASH_FLOW_NORMAL:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

.field public static final enum FLASH_FLOW_NO_FLASH:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

.field public static final enum FLASH_FLOW_PANEL_CUSTOMIZATION:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

.field public static final enum FLASH_FLOW_PANEL_STANDARD:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    const-string v1, "FLASH_FLOW_NO_FLASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_NO_FLASH:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    const-string v1, "FLASH_FLOW_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_NORMAL:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    const-string v1, "FLASH_FLOW_PANEL_STANDARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_PANEL_STANDARD:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    const-string v1, "FLASH_FLOW_PANEL_CUSTOMIZATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_PANEL_CUSTOMIZATION:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_NO_FLASH:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_NORMAL:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_PANEL_STANDARD:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_PANEL_CUSTOMIZATION:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    aput-object v1, v0, v5

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->$VALUES:[Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->$VALUES:[Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    return-object v0
.end method
