.class public final Lcom/badlogic/gdx/graphics/VertexAttribute;
.super Ljava/lang/Object;
.source "VertexAttribute.java"


# instance fields
.field public alias:Ljava/lang/String;

.field public final normalized:Z

.field public final numComponents:I

.field public offset:I

.field public final type:I

.field public unit:I

.field public final usage:I

.field private final usageIndex:I


# direct methods
.method private constructor <init>(IIIZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(IIIZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->type:I

    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->normalized:Z

    iput-object p5, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iput p6, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usageIndex:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 v1, 0x1401

    goto :goto_0

    :cond_0
    const/16 v1, 0x1406

    :goto_0
    move v5, v1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;I)V

    return-void
.end method

.method public static Binormal()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v1, "a_binormal"

    const/16 v2, 0x100

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static BoneWeight(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_boneWeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method

.method public static ColorPacked()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 7

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v5, "a_color"

    const/4 v1, 0x4

    const/4 v2, 0x4

    const/16 v3, 0x1401

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;)V

    return-object v6
.end method

.method public static ColorUnpacked()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 7

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v5, "a_color"

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IIIZLjava/lang/String;)V

    return-object v6
.end method

.method public static Normal()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v1, "a_normal"

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static Position()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v1, "a_position"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static Tangent()Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v1, "a_tangent"

    const/16 v2, 0x80

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static TexCoords(I)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a_texCoord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/VertexAttribute;->equals(Lcom/badlogic/gdx/graphics/VertexAttribute;)Z

    move-result p1

    return p1
.end method

.method public getKey()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usageIndex:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->unit:I

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttribute;->getKey()I

    move-result v0

    mul-int/lit16 v0, v0, 0x21d

    iget v1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x21d

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/VertexAttribute;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
