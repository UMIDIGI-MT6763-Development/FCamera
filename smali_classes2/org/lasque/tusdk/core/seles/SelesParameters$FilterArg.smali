.class public Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/SelesParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterArg"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesParameters;

.field private b:Ljava/lang/String;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/seles/SelesParameters;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a:Lorg/lasque/tusdk/core/seles/SelesParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->d:F

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->g:Z

    return p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->g:Z

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c:F

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->e:F

    return p1
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->f:F

    return p1
.end method


# virtual methods
.method public equalsKey(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecentValue()F
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c:F

    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->e:F

    sub-float/2addr v0, v1

    iget v2, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->f:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    return v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c:F

    return v0
.end method

.method public reset()V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c:F

    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->g:Z

    :cond_0
    return-void
.end method

.method public setPrecentValue(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->g:Z

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->f:F

    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->e:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c:F

    :cond_2
    return-void
.end method
