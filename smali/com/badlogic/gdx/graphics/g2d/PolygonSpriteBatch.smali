.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;
.super Ljava/lang/Object;
.source "PolygonSpriteBatch.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/Batch;


# instance fields
.field private blendDstFunc:I

.field private blendSrcFunc:I

.field private blendingDisabled:Z

.field color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private invTexHeight:F

.field private invTexWidth:F

.field private lastTexture:Lcom/badlogic/gdx/graphics/Texture;

.field public maxTrianglesInBatch:I

.field private mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private ownsShader:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private triangleIndex:I

.field private final triangles:[S

.field private vertexIndex:I

.field private final vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    const/16 v1, 0x302

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/16 v1, 0x303

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    const/16 v2, 0x2aa8

    if-gt p1, v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexArray:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v3, :cond_0

    sget-object v2, Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;->VertexBufferObjectWithVAO:Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v5, 0x0

    mul-int/lit8 v9, p1, 0x3

    const/4 v3, 0x3

    new-array v8, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v6, "a_position"

    const/4 v7, 0x2

    const/4 v10, 0x1

    invoke-direct {v3, v10, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v8, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v3, "a_color"

    const/4 v6, 0x4

    invoke-direct {v1, v6, v6, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v8, v10

    new-instance v1, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v3, 0x10

    const-string v6, "a_texCoord0"

    invoke-direct {v1, v3, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v1, v8, v7

    move-object v3, v2

    move v6, p1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(Lcom/badlogic/gdx/graphics/Mesh$VertexDataType;ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    mul-int/lit8 p1, p1, 0x5

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    new-array p1, v9, [S

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    if-nez p2, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, p2, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t have more than 10920 triangles per batch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private setupMatrices()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "u_projTrans"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_projTrans"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    :goto_0
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableBlending()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->ownsShader:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 p1, p1, 0x6

    array-length v2, v0

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 p1, p1, 0x14

    array-length v2, v1

    if-le p1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, p1, 0x1

    int-to-short v5, v3

    aput-short v5, v0, p1

    add-int/lit8 p1, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v0, p1

    add-int/lit8 p1, v4, 0x1

    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    aput-short v5, v0, v4

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    add-int/lit8 v0, v2, 0x1

    aput p2, v1, v2

    add-int/lit8 v2, v0, 0x1

    aput p3, v1, v0

    add-int/lit8 v0, v2, 0x1

    aput p1, v1, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    aput v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v0

    add-int/lit8 p2, v2, 0x1

    aput p5, v1, v2

    add-int/lit8 v0, p2, 0x1

    aput p1, v1, p2

    add-int/lit8 p2, v0, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, p2, 0x1

    aput v3, v1, p2

    add-int/lit8 p2, v0, 0x1

    aput p4, v1, v0

    add-int/lit8 v0, p2, 0x1

    aput p5, v1, p2

    add-int/lit8 p2, v0, 0x1

    aput p1, v1, v0

    add-int/lit8 p5, p2, 0x1

    aput v4, v1, p2

    add-int/lit8 p2, p5, 0x1

    aput v3, v1, p5

    add-int/lit8 p5, p2, 0x1

    aput p4, v1, p2

    add-int/lit8 p2, p5, 0x1

    aput p3, v1, p5

    add-int/lit8 p3, p2, 0x1

    aput p1, v1, p2

    add-int/lit8 p1, p3, 0x1

    aput v4, v1, p3

    add-int/lit8 p2, p1, 0x1

    aput v4, v1, p1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 9

    move-object v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v4, p1

    if-eq v4, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v3, v3, 0x6

    array-length v4, v1

    if-gt v3, v4, :cond_1

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v3, v3, 0x14

    array-length v4, v2

    if-le v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v5, v4, 0x5

    add-int/lit8 v6, v3, 0x1

    int-to-short v7, v5

    aput-short v7, v1, v3

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v8, v5, 0x1

    int-to-short v8, v8

    aput-short v8, v1, v6

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, v5, 0x2

    int-to-short v8, v8

    aput-short v8, v1, v3

    add-int/lit8 v3, v6, 0x1

    aput-short v8, v1, v6

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    aput-short v5, v1, v3

    add-int/lit8 v3, v6, 0x1

    aput-short v7, v1, v6

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v1, p2, p4

    add-float v3, p3, p5

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    add-int/lit8 v6, v4, 0x1

    aput p2, v2, v4

    add-int/lit8 v4, v6, 0x1

    aput p3, v2, v6

    add-int/lit8 v6, v4, 0x1

    aput v5, v2, v4

    add-int/lit8 v4, v6, 0x1

    aput p6, v2, v6

    add-int/lit8 v6, v4, 0x1

    aput p7, v2, v4

    add-int/lit8 v4, v6, 0x1

    aput p2, v2, v6

    add-int/lit8 v6, v4, 0x1

    aput v3, v2, v4

    add-int/lit8 v4, v6, 0x1

    aput v5, v2, v6

    add-int/lit8 v6, v4, 0x1

    aput p6, v2, v4

    add-int/lit8 v4, v6, 0x1

    aput p9, v2, v6

    add-int/lit8 v6, v4, 0x1

    aput v1, v2, v4

    add-int/lit8 v4, v6, 0x1

    aput v3, v2, v6

    add-int/lit8 v3, v4, 0x1

    aput v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    aput p8, v2, v3

    add-int/lit8 v3, v4, 0x1

    aput p9, v2, v4

    add-int/lit8 v4, v3, 0x1

    aput v1, v2, v3

    add-int/lit8 v1, v4, 0x1

    aput p3, v2, v4

    add-int/lit8 v3, v1, 0x1

    aput v5, v2, v1

    add-int/lit8 v1, v3, 0x1

    aput p8, v2, v3

    add-int/lit8 v3, v1, 0x1

    aput p7, v2, v1

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p11

    move/from16 v4, p12

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v8, p1

    if-eq v8, v7, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v7, v7, 0x6

    array-length v8, v5

    if-gt v7, v8, :cond_1

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v7, v7, 0x14

    array-length v8, v6

    if-le v7, v8, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v7, 0x1

    int-to-short v10, v8

    aput-short v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v11, v8, 0x1

    int-to-short v11, v11

    aput-short v11, v5, v9

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v11, v8, 0x2

    int-to-short v11, v11

    aput-short v11, v5, v7

    add-int/lit8 v7, v9, 0x1

    aput-short v11, v5, v9

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, v5, v7

    add-int/lit8 v7, v9, 0x1

    aput-short v10, v5, v9

    iput v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v5, p2, v1

    add-float v7, p3, v2

    neg-float v8, v1

    neg-float v9, v2

    sub-float v1, p6, v1

    sub-float v2, p7, v2

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_3

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_4

    :cond_3
    mul-float v8, v8, p8

    mul-float v9, v9, p9

    mul-float v1, v1, p8

    mul-float v2, v2, p9

    :cond_4
    const/4 v10, 0x0

    cmpl-float v10, p10, v10

    if-eqz v10, :cond_5

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v11

    mul-float v12, v10, v8

    mul-float v13, v11, v9

    sub-float v13, v12, v13

    mul-float/2addr v8, v11

    mul-float/2addr v9, v10

    add-float/2addr v9, v8

    mul-float v14, v11, v2

    sub-float/2addr v12, v14

    mul-float/2addr v2, v10

    add-float/2addr v8, v2

    mul-float/2addr v10, v1

    sub-float/2addr v10, v14

    mul-float/2addr v11, v1

    add-float/2addr v2, v11

    sub-float v1, v10, v12

    add-float/2addr v1, v13

    sub-float v11, v8, v9

    sub-float v11, v2, v11

    move/from16 v17, v11

    move v11, v1

    move v1, v10

    move v10, v2

    move v2, v8

    move v8, v13

    move/from16 v13, v17

    goto :goto_1

    :cond_5
    move v11, v1

    move v10, v2

    move v12, v8

    move v13, v9

    :goto_1
    add-float/2addr v8, v5

    add-float/2addr v9, v7

    add-float/2addr v12, v5

    add-float/2addr v2, v7

    add-float/2addr v1, v5

    add-float/2addr v10, v7

    add-float/2addr v11, v5

    add-float/2addr v13, v7

    int-to-float v5, v3

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v5, v7

    add-int v14, v4, p14

    int-to-float v14, v14

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v14, v15

    add-int v3, v3, p13

    int-to-float v3, v3

    mul-float/2addr v3, v7

    int-to-float v4, v4

    mul-float/2addr v4, v15

    if-eqz p15, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    :goto_2
    if-eqz p16, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_3
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v16, v15, 0x1

    aput v8, v6, v15

    add-int/lit8 v8, v16, 0x1

    aput v9, v6, v16

    add-int/lit8 v9, v8, 0x1

    aput v7, v6, v8

    add-int/lit8 v8, v9, 0x1

    aput v3, v6, v9

    add-int/lit8 v9, v8, 0x1

    aput v4, v6, v8

    add-int/lit8 v8, v9, 0x1

    aput v12, v6, v9

    add-int/lit8 v9, v8, 0x1

    aput v2, v6, v8

    add-int/lit8 v2, v9, 0x1

    aput v7, v6, v9

    add-int/lit8 v8, v2, 0x1

    aput v3, v6, v2

    add-int/lit8 v2, v8, 0x1

    aput v14, v6, v8

    add-int/lit8 v3, v2, 0x1

    aput v1, v6, v2

    add-int/lit8 v1, v3, 0x1

    aput v10, v6, v3

    add-int/lit8 v2, v1, 0x1

    aput v7, v6, v1

    add-int/lit8 v1, v2, 0x1

    aput v5, v6, v2

    add-int/lit8 v2, v1, 0x1

    aput v14, v6, v1

    add-int/lit8 v1, v2, 0x1

    aput v11, v6, v2

    add-int/lit8 v2, v1, 0x1

    aput v13, v6, v1

    add-int/lit8 v1, v2, 0x1

    aput v7, v6, v2

    add-int/lit8 v2, v1, 0x1

    aput v5, v6, v1

    add-int/lit8 v1, v2, 0x1

    aput v4, v6, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object v6, p1

    if-eq v6, v5, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v6, v3

    if-gt v5, v6, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v6, v4

    if-le v5, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v6, 0x5

    add-int/lit8 v7, v5, 0x1

    int-to-short v8, v6

    aput-short v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v6, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v5

    add-int/lit8 v5, v7, 0x1

    aput-short v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, v3, v5

    add-int/lit8 v5, v7, 0x1

    aput-short v8, v3, v7

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    int-to-float v3, v1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr v3, v5

    add-int v6, v2, p9

    int-to-float v6, v6

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v6, v7

    add-int v1, v1, p8

    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    add-float v5, p2, p4

    add-float v7, p3, p5

    if-eqz p10, :cond_3

    goto :goto_1

    :cond_3
    move v11, v3

    move v3, v1

    move v1, v11

    :goto_1
    if-eqz p11, :cond_4

    move v11, v6

    move v6, v2

    move v2, v11

    :cond_4
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v10, v9, 0x1

    aput p2, v4, v9

    add-int/lit8 v9, v10, 0x1

    aput p3, v4, v10

    add-int/lit8 v10, v9, 0x1

    aput v8, v4, v9

    add-int/lit8 v9, v10, 0x1

    aput v1, v4, v10

    add-int/lit8 v10, v9, 0x1

    aput v6, v4, v9

    add-int/lit8 v9, v10, 0x1

    aput p2, v4, v10

    add-int/lit8 v10, v9, 0x1

    aput v7, v4, v9

    add-int/lit8 v9, v10, 0x1

    aput v8, v4, v10

    add-int/lit8 v10, v9, 0x1

    aput v1, v4, v9

    add-int/lit8 v1, v10, 0x1

    aput v2, v4, v10

    add-int/lit8 v9, v1, 0x1

    aput v5, v4, v1

    add-int/lit8 v1, v9, 0x1

    aput v7, v4, v9

    add-int/lit8 v7, v1, 0x1

    aput v8, v4, v1

    add-int/lit8 v1, v7, 0x1

    aput v3, v4, v7

    add-int/lit8 v7, v1, 0x1

    aput v2, v4, v1

    add-int/lit8 v1, v7, 0x1

    aput v5, v4, v7

    add-int/lit8 v2, v1, 0x1

    aput p3, v4, v1

    add-int/lit8 v1, v2, 0x1

    aput v8, v4, v2

    add-int/lit8 v2, v1, 0x1

    aput v3, v4, v1

    add-int/lit8 v1, v2, 0x1

    aput v6, v4, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 p1, p1, 0x6

    array-length v2, v0

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 p1, p1, 0x14

    array-length v2, v1

    if-le p1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, p1, 0x1

    int-to-short v5, v3

    aput-short v5, v0, p1

    add-int/lit8 p1, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v0, p1

    add-int/lit8 p1, v4, 0x1

    aput-short v6, v0, v4

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v0, p1

    add-int/lit8 p1, v4, 0x1

    aput-short v5, v0, v4

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    int-to-float p1, p4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexWidth:F

    mul-float/2addr p1, v0

    add-int v3, p5, p7

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->invTexHeight:F

    mul-float/2addr v3, v4

    add-int/2addr p4, p6

    int-to-float p4, p4

    mul-float/2addr p4, v0

    int-to-float p5, p5

    mul-float/2addr p5, v4

    int-to-float p6, p6

    add-float/2addr p6, p2

    int-to-float p7, p7

    add-float/2addr p7, p3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    add-int/lit8 v4, v2, 0x1

    aput p2, v1, v2

    add-int/lit8 v2, v4, 0x1

    aput p3, v1, v4

    add-int/lit8 v4, v2, 0x1

    aput v0, v1, v2

    add-int/lit8 v2, v4, 0x1

    aput p1, v1, v4

    add-int/lit8 v4, v2, 0x1

    aput v3, v1, v2

    add-int/lit8 v2, v4, 0x1

    aput p2, v1, v4

    add-int/lit8 p2, v2, 0x1

    aput p7, v1, v2

    add-int/lit8 v2, p2, 0x1

    aput v0, v1, p2

    add-int/lit8 p2, v2, 0x1

    aput p1, v1, v2

    add-int/lit8 p1, p2, 0x1

    aput p5, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput p6, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput p7, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput v0, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput p4, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput p5, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput p6, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput p3, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput v0, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput p4, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput v3, v1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    div-int/lit8 v2, p4, 0x14

    mul-int/lit8 v2, v2, 0x6

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr p1, v2

    array-length v3, v0

    if-gt p1, v3, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    array-length v3, v1

    if-le p1, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    div-int/lit8 v4, p1, 0x5

    int-to-short v4, v4

    add-int/2addr v2, v3

    :goto_1
    if-ge v3, v2, :cond_3

    aput-short v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-short v6, v6

    aput-short v6, v0, v5

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, 0x2

    int-to-short v6, v6

    aput-short v6, v0, v5

    add-int/lit8 v5, v3, 0x3

    aput-short v6, v0, v5

    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v4, 0x3

    int-to-short v6, v6

    aput-short v6, v0, v5

    add-int/lit8 v5, v3, 0x5

    aput-short v4, v0, v5

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    invoke-static {p2, p3, v1, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr p1, p7

    array-length v2, v0

    if-gt p1, v2, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    array-length v2, v1

    if-le p1, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v2, 0x5

    add-int/2addr p7, p6

    :goto_1
    if-ge p6, p7, :cond_3

    add-int/lit8 v4, p1, 0x1

    aget-short v5, p5, p6

    add-int/2addr v5, v3

    int-to-short v5, v5

    aput-short v5, v0, p1

    add-int/lit8 p6, p6, 0x1

    move p1, v4

    goto :goto_1

    :cond_3
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FF)V
    .locals 12

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    array-length v2, v1

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    array-length v4, v3

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v5, v2

    array-length v6, v0

    if-gt v5, v6, :cond_1

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v6, v6

    if-le v5, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v6, 0x5

    const/4 v8, 0x0

    move v9, v5

    move v5, v8

    :goto_1
    if-ge v5, v2, :cond_3

    add-int/lit8 v10, v9, 0x1

    aget-short v11, v1, v5

    add-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, v0, v9

    add-int/lit8 v5, v5, 0x1

    move v9, v10

    goto :goto_1

    :cond_3
    iput v9, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    :goto_2
    if-ge v8, v4, :cond_4

    add-int/lit8 v2, v6, 0x1

    aget v5, v3, v8

    add-float/2addr v5, p2

    aput v5, v0, v6

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v8, 0x1

    aget v7, v3, v6

    add-float/2addr v7, p3

    aput v7, v0, v2

    add-int/lit8 v2, v5, 0x1

    aput v1, v0, v5

    add-int/lit8 v5, v2, 0x1

    aget v7, p1, v8

    aput v7, v0, v2

    add-int/lit8 v2, v5, 0x1

    aget v6, p1, v6

    aput v6, v0, v5

    add-int/lit8 v8, v8, 0x2

    move v6, v2

    goto :goto_2

    :cond_4
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    array-length v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    array-length v6, v5

    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_0

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v8, v4

    array-length v4, v2

    if-gt v8, v4, :cond_1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v4, v6

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v8, v8

    if-le v4, v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v9, v8, 0x5

    array-length v10, v3

    const/4 v11, 0x0

    move v12, v4

    move v4, v11

    :goto_1
    if-ge v4, v10, :cond_3

    add-int/lit8 v13, v12, 0x1

    aget-short v14, v3, v4

    add-int/2addr v14, v9

    int-to-short v14, v14

    aput-short v14, v2, v12

    add-int/lit8 v4, v4, 0x1

    move v12, v13

    goto :goto_1

    :cond_3
    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v4, v4

    div-float v4, p4, v4

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v7, v7

    div-float v7, p5, v7

    :goto_2
    if-ge v11, v6, :cond_4

    add-int/lit8 v9, v8, 0x1

    aget v10, v5, v11

    mul-float/2addr v10, v4

    add-float v10, v10, p2

    aput v10, v2, v8

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v10, v11, 0x1

    aget v12, v5, v10

    mul-float/2addr v12, v7

    add-float v12, v12, p3

    aput v12, v2, v9

    add-int/lit8 v9, v8, 0x1

    aput v3, v2, v8

    add-int/lit8 v8, v9, 0x1

    aget v12, v1, v11

    aput v12, v2, v9

    add-int/lit8 v9, v8, 0x1

    aget v10, v1, v10

    aput v10, v2, v8

    add-int/lit8 v11, v11, 0x2

    move v8, v9

    goto :goto_2

    :cond_4
    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;FFFFFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    array-length v4, v3

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    array-length v6, v5

    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v8, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v8, v9, :cond_0

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/2addr v8, v4

    array-length v9, v2

    if-gt v8, v9, :cond_1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/2addr v8, v6

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    array-length v9, v9

    if-le v8, v9, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v10, v9, 0x5

    const/4 v11, 0x0

    move v12, v8

    move v8, v11

    :goto_1
    if-ge v8, v4, :cond_3

    add-int/lit8 v13, v12, 0x1

    aget-short v14, v3, v8

    add-int/2addr v14, v10

    int-to-short v14, v14

    aput-short v14, v2, v12

    add-int/lit8 v8, v8, 0x1

    move v12, v13

    goto :goto_1

    :cond_3
    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    add-float v4, p2, p4

    add-float v8, p3, p5

    iget v10, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    int-to-float v10, v10

    div-float v10, p6, v10

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    int-to-float v7, v7

    div-float v7, p7, v7

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    :goto_2
    if-ge v11, v6, :cond_4

    aget v14, v5, v11

    mul-float/2addr v14, v10

    sub-float v14, v14, p4

    mul-float v14, v14, p8

    add-int/lit8 v15, v11, 0x1

    aget v16, v5, v15

    mul-float v16, v16, v7

    sub-float v16, v16, p5

    mul-float v16, v16, p9

    add-int/lit8 v17, v9, 0x1

    mul-float v18, v12, v14

    mul-float v19, v13, v16

    sub-float v18, v18, v19

    add-float v18, v18, v4

    aput v18, v2, v9

    add-int/lit8 v9, v17, 0x1

    mul-float/2addr v14, v13

    mul-float v16, v16, v12

    add-float v14, v14, v16

    add-float/2addr v14, v8

    aput v14, v2, v17

    add-int/lit8 v14, v9, 0x1

    aput v3, v2, v9

    add-int/lit8 v9, v14, 0x1

    aget v16, v1, v11

    aput v16, v2, v14

    add-int/lit8 v14, v9, 0x1

    aget v15, v1, v15

    aput v15, v2, v9

    add-int/lit8 v11, v11, 0x2

    move v9, v14

    goto :goto_2

    :cond_4
    iput v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v2, v2, 0x6

    array-length v3, v0

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v2, v2, 0x14

    array-length v3, v1

    if-le v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v2, 0x1

    int-to-short v5, v3

    aput-short v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    int-to-short v6, v6

    aput-short v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v6, v3, 0x2

    int-to-short v6, v6

    aput-short v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    aput-short v6, v0, v4

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v2, v4, 0x1

    aput-short v5, v0, v4

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v5, 0x1

    aput p2, v1, v5

    add-int/lit8 v5, v6, 0x1

    aput p3, v1, v6

    add-int/lit8 v6, v5, 0x1

    aput v4, v1, v5

    add-int/lit8 v5, v6, 0x1

    aput v0, v1, v6

    add-int/lit8 v6, v5, 0x1

    aput v2, v1, v5

    add-int/lit8 v5, v6, 0x1

    aput p2, v1, v6

    add-int/lit8 p2, v5, 0x1

    aput p5, v1, v5

    add-int/lit8 v5, p2, 0x1

    aput v4, v1, p2

    add-int/lit8 p2, v5, 0x1

    aput v0, v1, v5

    add-int/lit8 v0, p2, 0x1

    aput p1, v1, p2

    add-int/lit8 p2, v0, 0x1

    aput p4, v1, v0

    add-int/lit8 v0, p2, 0x1

    aput p5, v1, p2

    add-int/lit8 p2, v0, 0x1

    aput v4, v1, v0

    add-int/lit8 p5, p2, 0x1

    aput v3, v1, p2

    add-int/lit8 p2, p5, 0x1

    aput p1, v1, p5

    add-int/lit8 p1, p2, 0x1

    aput p4, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput p3, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput v4, v1, p2

    add-int/lit8 p2, p1, 0x1

    aput v3, v1, p1

    add-int/lit8 p1, p2, 0x1

    aput v2, v1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_0

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v6, v6, 0x6

    array-length v7, v4

    if-gt v6, v7, :cond_1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v6, 0x14

    array-length v7, v5

    if-le v6, v7, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    add-int/lit8 v8, v6, 0x1

    int-to-short v9, v7

    aput-short v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v10, v7, 0x1

    int-to-short v10, v10

    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v8, 0x1

    aput-short v9, v4, v8

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v4, p2, v2

    add-float v6, p3, v3

    neg-float v7, v2

    neg-float v8, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, p8, v9

    if-nez v10, :cond_3

    cmpl-float v9, p9, v9

    if-eqz v9, :cond_4

    :cond_3
    mul-float v7, v7, p8

    mul-float v8, v8, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_4
    const/4 v9, 0x0

    cmpl-float v9, p10, v9

    if-eqz v9, :cond_5

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    mul-float v11, v9, v7

    mul-float v12, v10, v8

    sub-float v12, v11, v12

    mul-float/2addr v7, v10

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    mul-float v13, v10, v3

    sub-float/2addr v11, v13

    mul-float/2addr v3, v9

    add-float/2addr v7, v3

    mul-float/2addr v9, v2

    sub-float/2addr v9, v13

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    sub-float v2, v9, v11

    add-float/2addr v2, v12

    sub-float v10, v7, v8

    sub-float v10, v3, v10

    move/from16 v17, v10

    move v10, v2

    move v2, v3

    move v3, v7

    move v7, v12

    move/from16 v12, v17

    goto :goto_1

    :cond_5
    move v9, v2

    move v10, v9

    move v2, v3

    move v11, v7

    move v12, v8

    :goto_1
    add-float/2addr v7, v4

    add-float/2addr v8, v6

    add-float/2addr v11, v4

    add-float/2addr v3, v6

    add-float/2addr v9, v4

    add-float/2addr v2, v6

    add-float/2addr v10, v4

    add-float/2addr v12, v6

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v16, v15, 0x1

    aput v7, v5, v15

    add-int/lit8 v7, v16, 0x1

    aput v8, v5, v16

    add-int/lit8 v8, v7, 0x1

    aput v14, v5, v7

    add-int/lit8 v7, v8, 0x1

    aput v4, v5, v8

    add-int/lit8 v8, v7, 0x1

    aput v6, v5, v7

    add-int/lit8 v7, v8, 0x1

    aput v11, v5, v8

    add-int/lit8 v8, v7, 0x1

    aput v3, v5, v7

    add-int/lit8 v3, v8, 0x1

    aput v14, v5, v8

    add-int/lit8 v7, v3, 0x1

    aput v4, v5, v3

    add-int/lit8 v3, v7, 0x1

    aput v1, v5, v7

    add-int/lit8 v4, v3, 0x1

    aput v9, v5, v3

    add-int/lit8 v3, v4, 0x1

    aput v2, v5, v4

    add-int/lit8 v2, v3, 0x1

    aput v14, v5, v3

    add-int/lit8 v3, v2, 0x1

    aput v13, v5, v2

    add-int/lit8 v2, v3, 0x1

    aput v1, v5, v3

    add-int/lit8 v1, v2, 0x1

    aput v10, v5, v2

    add-int/lit8 v2, v1, 0x1

    aput v12, v5, v1

    add-int/lit8 v1, v2, 0x1

    aput v14, v5, v2

    add-int/lit8 v2, v1, 0x1

    aput v13, v5, v1

    add-int/lit8 v1, v2, 0x1

    aput v6, v5, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v6, v7, :cond_0

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v6, v6, 0x6

    array-length v7, v4

    if-gt v6, v7, :cond_1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v6, v6, 0x14

    array-length v7, v5

    if-le v6, v7, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v7, v7, 0x5

    add-int/lit8 v8, v6, 0x1

    int-to-short v9, v7

    aput-short v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v10, v7, 0x1

    int-to-short v10, v10

    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v10, v7, 0x2

    int-to-short v10, v10

    aput-short v10, v4, v6

    add-int/lit8 v6, v8, 0x1

    aput-short v10, v4, v8

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    int-to-short v7, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v8, 0x1

    aput-short v9, v4, v8

    iput v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-float v4, p2, v2

    add-float v6, p3, v3

    neg-float v7, v2

    neg-float v8, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v10, p8, v9

    if-nez v10, :cond_3

    cmpl-float v9, p9, v9

    if-eqz v9, :cond_4

    :cond_3
    mul-float v7, v7, p8

    mul-float v8, v8, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_4
    const/4 v9, 0x0

    cmpl-float v9, p10, v9

    if-eqz v9, :cond_5

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    mul-float v11, v9, v7

    mul-float v12, v10, v8

    sub-float v12, v11, v12

    mul-float/2addr v7, v10

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    mul-float v13, v10, v3

    sub-float/2addr v11, v13

    mul-float/2addr v3, v9

    add-float/2addr v7, v3

    mul-float/2addr v9, v2

    sub-float/2addr v9, v13

    mul-float/2addr v10, v2

    add-float/2addr v3, v10

    sub-float v2, v9, v11

    add-float/2addr v2, v12

    sub-float v10, v7, v8

    sub-float v10, v3, v10

    move/from16 v19, v10

    move v10, v2

    move v2, v3

    move v3, v7

    move v7, v12

    move/from16 v12, v19

    goto :goto_1

    :cond_5
    move v9, v2

    move v10, v9

    move v2, v3

    move v11, v7

    move v12, v8

    :goto_1
    add-float/2addr v7, v4

    add-float/2addr v8, v6

    add-float/2addr v11, v4

    add-float/2addr v3, v6

    add-float/2addr v9, v4

    add-float/2addr v2, v6

    add-float/2addr v10, v4

    add-float/2addr v12, v6

    if-eqz p11, :cond_6

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    move/from16 p2, v4

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 p3, v4

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v17, v1

    move/from16 v16, v4

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 p2, v12

    goto :goto_2

    :cond_6
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v15, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    move/from16 p2, v4

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 p3, v4

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v17, v1

    move/from16 v16, v4

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 p2, v12

    :goto_2
    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    move/from16 p3, v10

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v18, v10, 0x1

    aput v7, v5, v10

    add-int/lit8 v7, v18, 0x1

    aput v8, v5, v18

    add-int/lit8 v8, v7, 0x1

    aput v12, v5, v7

    add-int/lit8 v7, v8, 0x1

    aput v1, v5, v8

    add-int/lit8 v1, v7, 0x1

    aput v6, v5, v7

    add-int/lit8 v6, v1, 0x1

    aput v11, v5, v1

    add-int/lit8 v1, v6, 0x1

    aput v3, v5, v6

    add-int/lit8 v3, v1, 0x1

    aput v12, v5, v1

    add-int/lit8 v1, v3, 0x1

    aput v13, v5, v3

    add-int/lit8 v3, v1, 0x1

    aput v14, v5, v1

    add-int/lit8 v1, v3, 0x1

    aput v9, v5, v3

    add-int/lit8 v3, v1, 0x1

    aput v2, v5, v1

    add-int/lit8 v1, v3, 0x1

    aput v12, v5, v3

    add-int/lit8 v2, v1, 0x1

    aput v15, v5, v1

    add-int/lit8 v1, v2, 0x1

    aput v4, v5, v2

    add-int/lit8 v2, v1, 0x1

    aput p3, v5, v1

    add-int/lit8 v1, v2, 0x1

    aput p2, v5, v2

    add-int/lit8 v2, v1, 0x1

    aput v12, v5, v1

    add-int/lit8 v1, v2, 0x1

    aput v16, v5, v2

    add-int/lit8 v2, v1, 0x1

    aput v17, v5, v1

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v5, v6, :cond_0

    invoke-direct {v0, v5}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    add-int/lit8 v5, v5, 0x6

    array-length v6, v3

    if-gt v5, v6, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v5, v5, 0x14

    array-length v6, v4

    if-le v5, v6, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_2
    :goto_0
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    div-int/lit8 v6, v6, 0x5

    add-int/lit8 v7, v5, 0x1

    int-to-short v8, v6

    aput-short v8, v3, v5

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v9, v6, 0x1

    int-to-short v9, v9

    aput-short v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v9, v6, 0x2

    int-to-short v9, v9

    aput-short v9, v3, v5

    add-int/lit8 v5, v7, 0x1

    aput-short v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, v3, v5

    add-int/lit8 v5, v7, 0x1

    aput-short v8, v3, v7

    iput v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v3, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    iget v5, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    iget v6, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, p3

    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v6, v7

    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v7, v7, p3

    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v7, v8

    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v8, v8, p2

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v9, v9, p3

    add-float/2addr v8, v9

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v8, v9

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v10, v10, p3

    add-float/2addr v9, v10

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v9, v10

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v10, v10, p2

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v11

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v11, v11, p2

    iget v2, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v11, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    add-int/lit8 v16, v15, 0x1

    aput v3, v4, v15

    add-int/lit8 v3, v16, 0x1

    aput v5, v4, v16

    add-int/lit8 v5, v3, 0x1

    aput v14, v4, v3

    add-int/lit8 v3, v5, 0x1

    aput v2, v4, v5

    add-int/lit8 v5, v3, 0x1

    aput v12, v4, v3

    add-int/lit8 v3, v5, 0x1

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x1

    aput v7, v4, v3

    add-int/lit8 v3, v5, 0x1

    aput v14, v4, v5

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v5, 0x1

    aput v1, v4, v5

    add-int/lit8 v3, v2, 0x1

    aput v8, v4, v2

    add-int/lit8 v2, v3, 0x1

    aput v9, v4, v3

    add-int/lit8 v3, v2, 0x1

    aput v14, v4, v2

    add-int/lit8 v2, v3, 0x1

    aput v13, v4, v3

    add-int/lit8 v3, v2, 0x1

    aput v1, v4, v2

    add-int/lit8 v1, v3, 0x1

    aput v10, v4, v3

    add-int/lit8 v2, v1, 0x1

    aput v11, v4, v1

    add-int/lit8 v1, v2, 0x1

    aput v14, v4, v2

    add-int/lit8 v2, v1, 0x1

    aput v13, v4, v1

    add-int/lit8 v1, v2, 0x1

    aput v12, v4, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolygonSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableBlending()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    return-void
.end method

.method public end()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->isBlendingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolygonSpriteBatch.begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->renderCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->totalRenderCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->maxTrianglesInBatch:I

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangles:[S

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    const/16 v3, 0xbe2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    invoke-interface {v2, v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    :goto_1
    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->vertexIndex:I

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->triangleIndex:I

    return-void
.end method

.method public getBlendDstFunc()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    return v0
.end method

.method public getBlendSrcFunc()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-object v1
.end method

.method public getPackedColor()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public isBlendingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendingDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDrawing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    return v0
.end method

.method public setBlendFunction(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendSrcFunc:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->blendDstFunc:I

    return-void
.end method

.method public setColor(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x18

    mul-float/2addr p3, v0

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p3, p4

    mul-float/2addr p2, v0

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, p3

    mul-float/2addr p1, v0

    float-to-int p1, p1

    or-int/2addr p1, p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->color:F

    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    :cond_1
    return-void
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    :goto_1
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    :cond_3
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->drawing:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setupMatrices()V

    :cond_1
    return-void
.end method
