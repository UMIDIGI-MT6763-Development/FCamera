.class public final enum Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Left:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

.field public static final enum Right:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Left:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    const-string v1, "Right"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Right:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Left:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->Right:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->a:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->a:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$TextPosition;

    return-object v0
.end method
