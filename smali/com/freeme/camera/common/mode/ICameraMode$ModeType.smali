.class public final enum Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
.super Ljava/lang/Enum;
.source "ICameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/ICameraMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/common/mode/ICameraMode$ModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field public static final enum PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field public static final enum VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    new-instance v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->$VALUES:[Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->$VALUES:[Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-virtual {v0}, [Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object v0
.end method
