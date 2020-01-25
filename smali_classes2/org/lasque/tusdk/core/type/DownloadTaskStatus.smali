.class public final enum Lorg/lasque/tusdk/core/type/DownloadTaskStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/type/DownloadTaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum StatusCancel:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field public static final enum StatusDownFailed:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field public static final enum StatusDowned:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field public static final enum StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field public static final enum StatusInit:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field public static final enum StatusRemoved:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

.field private static final b:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/lasque/tusdk/core/type/DownloadTaskStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lorg/lasque/tusdk/core/type/DownloadTaskStatus;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const-string v1, "StatusInit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusInit:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    new-instance v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const-string v1, "StatusDowning"

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    new-instance v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const-string v1, "StatusDowned"

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-direct {v0, v1, v4, v5}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowned:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    new-instance v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const-string v1, "StatusDownFailed"

    const/4 v5, 0x3

    const/16 v6, 0x1e

    invoke-direct {v0, v1, v5, v6}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDownFailed:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    new-instance v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const-string v1, "StatusCancel"

    const/4 v6, 0x4

    const/16 v7, 0x28

    invoke-direct {v0, v1, v6, v7}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusCancel:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    new-instance v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const-string v1, "StatusRemoved"

    const/4 v7, 0x5

    const/16 v8, 0x64

    invoke-direct {v0, v1, v7, v8}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusRemoved:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    sget-object v1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusInit:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowned:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDownFailed:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusCancel:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusRemoved:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->c:[Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->b:Ljava/util/Map;

    invoke-static {}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->values()[Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->getFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->a:I

    return-void
.end method

.method public static getType(I)Lorg/lasque/tusdk/core/type/DownloadTaskStatus;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusInit:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/DownloadTaskStatus;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/type/DownloadTaskStatus;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->c:[Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->a:I

    return v0
.end method
