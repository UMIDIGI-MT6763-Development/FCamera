.class public final enum Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DARK:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

.field public static final enum LIGHT:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;


# instance fields
.field private a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    const-string v1, "DARK"

    const/16 v2, 0x14

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->DARK:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    new-instance v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    const-string v1, "LIGHT"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;-><init>(Ljava/lang/String;I[F)V

    sput-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->LIGHT:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    sget-object v1, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->DARK:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->LIGHT:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->b:[Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->a:[F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->b:[Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;

    return-object v0
.end method


# virtual methods
.method public getFilter()[F
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener$TouchColorType;->a:[F

    return-object v0
.end method
