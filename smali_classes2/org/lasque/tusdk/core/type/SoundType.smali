.class public final enum Lorg/lasque/tusdk/core/type/SoundType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/type/SoundType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeDefault:Lorg/lasque/tusdk/core/type/SoundType;

.field public static final enum TypeShock:Lorg/lasque/tusdk/core/type/SoundType;

.field public static final enum TypeUnknown:Lorg/lasque/tusdk/core/type/SoundType;

.field public static final enum TypeVoice:Lorg/lasque/tusdk/core/type/SoundType;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/type/SoundType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic d:[Lorg/lasque/tusdk/core/type/SoundType;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/type/SoundType;

    const-string v1, "TypeUnknown"

    const-string v2, "unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/lasque/tusdk/core/type/SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/type/SoundType;->TypeUnknown:Lorg/lasque/tusdk/core/type/SoundType;

    new-instance v0, Lorg/lasque/tusdk/core/type/SoundType;

    const-string v1, "TypeDefault"

    const-string v2, "default"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lorg/lasque/tusdk/core/type/SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/type/SoundType;->TypeDefault:Lorg/lasque/tusdk/core/type/SoundType;

    new-instance v0, Lorg/lasque/tusdk/core/type/SoundType;

    const-string v1, "TypeShock"

    const-string v2, "shock"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lorg/lasque/tusdk/core/type/SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/type/SoundType;->TypeShock:Lorg/lasque/tusdk/core/type/SoundType;

    new-instance v0, Lorg/lasque/tusdk/core/type/SoundType;

    const-string v1, "TypeVoice"

    const-string v2, "voice"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lorg/lasque/tusdk/core/type/SoundType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/type/SoundType;->TypeVoice:Lorg/lasque/tusdk/core/type/SoundType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/type/SoundType;

    sget-object v1, Lorg/lasque/tusdk/core/type/SoundType;->TypeUnknown:Lorg/lasque/tusdk/core/type/SoundType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/type/SoundType;->TypeDefault:Lorg/lasque/tusdk/core/type/SoundType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/type/SoundType;->TypeShock:Lorg/lasque/tusdk/core/type/SoundType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/type/SoundType;->TypeVoice:Lorg/lasque/tusdk/core/type/SoundType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/core/type/SoundType;->d:[Lorg/lasque/tusdk/core/type/SoundType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/type/SoundType;->c:Ljava/util/Map;

    invoke-static {}, Lorg/lasque/tusdk/core/type/SoundType;->values()[Lorg/lasque/tusdk/core/type/SoundType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lorg/lasque/tusdk/core/type/SoundType;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/type/SoundType;->getFlag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/type/SoundType;->a:Ljava/lang/String;

    iput p4, p0, Lorg/lasque/tusdk/core/type/SoundType;->b:I

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/SoundType;
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/type/SoundType;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/SoundType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lorg/lasque/tusdk/core/type/SoundType;->TypeUnknown:Lorg/lasque/tusdk/core/type/SoundType;

    :cond_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/SoundType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/type/SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/SoundType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/type/SoundType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/SoundType;->d:[Lorg/lasque/tusdk/core/type/SoundType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/type/SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/type/SoundType;

    return-object v0
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/type/SoundType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/type/SoundType;->b:I

    return v0
.end method
