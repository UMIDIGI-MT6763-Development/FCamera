.class public final enum Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaterMarkPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field public static final enum BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field public static final enum Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field public static final enum TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field public static final enum TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const-string v1, "TopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const-string v1, "TopRight"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const-string v1, "BottomLeft"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const-string v1, "BottomRight"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const-string v1, "Center"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->Center:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->a:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->a:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-object v0
.end method
