.class public final enum Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraAutoFocus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field public static final enum ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field public static final enum ContinuousVideo:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field public static final enum EDOF:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field public static final enum Macro:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field public static final enum Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const-string v1, "Auto"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const-string v1, "Macro"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Macro:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const-string v1, "ContinuousVideo"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousVideo:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const-string v1, "ContinuousPicture"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const-string v1, "EDOF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->EDOF:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Off:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Auto:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->Macro:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousVideo:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->ContinuousPicture:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->EDOF:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->a:[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->a:[Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraAutoFocus;

    return-object v0
.end method
