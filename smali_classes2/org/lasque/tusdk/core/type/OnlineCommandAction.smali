.class public final enum Lorg/lasque/tusdk/core/type/OnlineCommandAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/type/OnlineCommandAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ActionCancel:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

.field public static final enum ActionDefault:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

.field public static final enum ActionDetail:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

.field public static final enum ActionSelect:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

.field public static final enum ActionUnknown:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

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
            "Lorg/lasque/tusdk/core/type/OnlineCommandAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lorg/lasque/tusdk/core/type/OnlineCommandAction;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    const-string v1, "ActionUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionUnknown:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    new-instance v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    const-string v1, "ActionDefault"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionDefault:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    new-instance v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    const-string v1, "ActionCancel"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionCancel:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    new-instance v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    const-string v1, "ActionSelect"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionSelect:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    new-instance v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    const-string v1, "ActionDetail"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionDetail:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    sget-object v1, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionUnknown:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionDefault:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionCancel:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionSelect:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionDetail:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->c:[Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->b:Ljava/util/Map;

    invoke-static {}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->values()[Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->getFlag()I

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

    iput p3, p0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->a:I

    return-void
.end method

.method public static getType(I)Lorg/lasque/tusdk/core/type/OnlineCommandAction;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ActionUnknown:Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/OnlineCommandAction;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/type/OnlineCommandAction;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->c:[Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/type/OnlineCommandAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->a:I

    return v0
.end method
