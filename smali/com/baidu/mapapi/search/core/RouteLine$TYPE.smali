.class public final enum Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/core/RouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/core/RouteLine$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRIVESTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field public static final enum TRANSITSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field public static final enum WALKSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v1, "DRIVESTEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->DRIVESTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    new-instance v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v1, "TRANSITSTEP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->TRANSITSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    new-instance v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const-string v1, "WALKSTEP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->WALKSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    sget-object v1, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->DRIVESTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->TRANSITSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->WALKSTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->b:[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

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

    iput p3, p0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a:I

    return v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)I
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->b:[Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-object v0
.end method
