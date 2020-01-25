.class public final enum Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraFlash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Always:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field public static final enum Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field public static final enum Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field public static final enum On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field public static final enum RedEye:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field public static final enum Torch:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const-string v1, "Auto"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const-string v1, "On"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const-string v1, "Torch"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Torch:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const-string v1, "Always"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Always:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const-string v1, "RedEye"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->RedEye:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->On:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Torch:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->Always:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->RedEye:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->a:[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->a:[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFlash;

    return-object v0
.end method
