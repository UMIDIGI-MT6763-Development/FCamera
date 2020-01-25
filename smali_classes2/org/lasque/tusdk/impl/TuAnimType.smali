.class public final enum Lorg/lasque/tusdk/impl/TuAnimType;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/lasque/tusdk/core/type/ActivityAnimType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/impl/TuAnimType;",
        ">;",
        "Lorg/lasque/tusdk/core/type/ActivityAnimType;"
    }
.end annotation


# static fields
.field private static final synthetic c:[Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum down:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum empty:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum fade:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum filpLeft:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum filpRight:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum pop:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum push:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum throwRight:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum up:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum upDownSub:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum zoomIn:Lorg/lasque/tusdk/impl/TuAnimType;

.field public static final enum zoomOut:Lorg/lasque/tusdk/impl/TuAnimType;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "empty"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->empty:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "push"

    const-string v3, "lsq_push_in"

    const-string v4, "lsq_push_out"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v3, v4}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->push:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "pop"

    const-string v3, "lsq_pull_in"

    const-string v4, "lsq_pull_out"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v3, v4}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->pop:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "up"

    const-string v3, "lsq_push_y_in"

    const/4 v4, 0x3

    const v7, 0x10a0001

    invoke-direct {v0, v1, v4, v3, v7}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->up:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "down"

    const-string v3, "lsq_pull_y_out"

    const/4 v7, 0x4

    const/high16 v8, 0x10a0000

    invoke-direct {v0, v1, v7, v8, v3}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->down:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "fade"

    const-string v3, "lsq_fade_in"

    const-string v8, "lsq_fade_out"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->fade:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "upDownSub"

    const-string v3, "lsq_push_sub_y_in"

    const-string v8, "lsq_pull_sub_y_out"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->upDownSub:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "throwRight"

    const-string v3, "lsq_throw_right_in"

    const-string v8, "lsq_throw_right_out"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->throwRight:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "filpLeft"

    const-string v3, "lsq_flip_left_in"

    const-string v8, "lsq_flip_left_out"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->filpLeft:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "filpRight"

    const-string v3, "lsq_flip_right_in"

    const-string v8, "lsq_flip_right_out"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->filpRight:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "zoomIn"

    const-string v3, "lsq_scale_in"

    const-string v8, "lsq_empty"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->zoomIn:Lorg/lasque/tusdk/impl/TuAnimType;

    new-instance v0, Lorg/lasque/tusdk/impl/TuAnimType;

    const-string v1, "zoomOut"

    const-string v3, "lsq_empty"

    const-string v8, "lsq_scale_out"

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v3, v8}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->zoomOut:Lorg/lasque/tusdk/impl/TuAnimType;

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/lasque/tusdk/impl/TuAnimType;

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->empty:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->push:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->pop:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->up:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->down:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->fade:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->upDownSub:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->throwRight:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->filpLeft:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->filpRight:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->zoomIn:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v14

    sget-object v1, Lorg/lasque/tusdk/impl/TuAnimType;->zoomOut:Lorg/lasque/tusdk/impl/TuAnimType;

    aput-object v1, v0, v15

    sput-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->c:[Lorg/lasque/tusdk/impl/TuAnimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/impl/TuAnimType;->a:I

    iput p4, p0, Lorg/lasque/tusdk/impl/TuAnimType;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p4}, Lorg/lasque/tusdk/core/TuSdkContext;->getAnimaResId(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;III)V

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

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getAnimaResId(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getAnimaResId(Ljava/lang/String;)I

    move-result p3

    invoke-static {p4}, Lorg/lasque/tusdk/core/TuSdkContext;->getAnimaResId(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/impl/TuAnimType;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/impl/TuAnimType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/impl/TuAnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/impl/TuAnimType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/impl/TuAnimType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->c:[Lorg/lasque/tusdk/impl/TuAnimType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/impl/TuAnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/impl/TuAnimType;

    return-object v0
.end method


# virtual methods
.method public getAnim(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/lasque/tusdk/impl/TuAnimType;->b:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/impl/TuAnimType;->a:I

    :goto_0
    return p1
.end method

.method public getEnterAnim()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/TuAnimType;->a:I

    return v0
.end method

.method public getExitAnim()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/TuAnimType;->b:I

    return v0
.end method
