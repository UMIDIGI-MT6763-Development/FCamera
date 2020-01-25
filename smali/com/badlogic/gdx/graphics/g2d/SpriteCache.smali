.class public Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
.super Ljava/lang/Object;
.source "SpriteCache.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;
    }
.end annotation


# static fields
.field private static final tempVertices:[F


# instance fields
.field private caches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private color:F

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final counts:Lcom/badlogic/gdx/utils/IntArray;

.field private currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

.field private customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private drawing:Z

.field private final mesh:Lcom/badlogic/gdx/graphics/Mesh;

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field public renderCalls:I

.field private final shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private final textures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public totalRenderCalls:I

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz p3, :cond_1

    const/16 p2, 0x1554

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t have more than 5460 sprites per batch: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    new-instance p2, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eqz p3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    mul-int/2addr v3, p1

    if-eqz p3, :cond_3

    mul-int/lit8 v4, p1, 0x6

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_position"

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-direct {v6, v9, v8, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v0

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v7, "a_color"

    invoke-direct {v6, v2, v2, v7}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v9

    new-instance v6, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v7, 0x10

    const-string v10, "a_texCoord0"

    invoke-direct {v6, v7, v8, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v6, v5, v8

    invoke-direct {p2, v9, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setAutoBind(Z)V

    if-eqz p3, :cond_5

    mul-int/2addr p1, v1

    new-array p2, p1, [S

    move p3, v0

    :goto_3
    if-ge v0, p1, :cond_4

    add-int/lit8 v1, v0, 0x0

    aput-short p3, p2, v1

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v3, p3, 0x1

    int-to-short v3, v3

    aput-short v3, p2, v1

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, p3, 0x2

    int-to-short v3, v3

    aput-short v3, p2, v1

    add-int/lit8 v1, v0, 0x3

    aput-short v3, p2, v1

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v3, p3, 0x3

    int-to-short v3, v3

    aput-short v3, p2, v1

    add-int/lit8 v1, v0, 0x5

    aput-short p3, p2, v1

    add-int/lit8 v0, v0, 0x6

    add-int/2addr p3, v2

    int-to-short p3, p3

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)Lcom/badlogic/gdx/graphics/Mesh;

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object p3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V

    return-void
.end method

.method static createDefaultShader()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 4

    const-string v0, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projectionViewMatrix;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projectionViewMatrix * a_position;\n}\n"

    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nvoid main()\n{\n  gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n}"

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->isCompiled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error compiling shader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 12

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    const/4 v5, 0x2

    aput v4, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x3

    aput v5, v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    aput v6, v2, v7

    const/4 v7, 0x5

    aput p2, v2, v7

    const/4 v7, 0x6

    aput v1, v2, v7

    const/4 v7, 0x7

    aput v4, v2, v7

    const/16 v7, 0x8

    aput v5, v2, v7

    const/16 v7, 0x9

    aput v5, v2, v7

    const/16 v7, 0xa

    aput v0, v2, v7

    const/16 v7, 0xb

    aput v1, v2, v7

    const/16 v7, 0xc

    aput v4, v2, v7

    const/16 v4, 0xd

    aput v6, v2, v4

    const/16 v4, 0xe

    aput v5, v2, v4

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    const/16 v4, 0x14

    const/16 v7, 0x13

    const/16 v8, 0x12

    const/16 v9, 0x11

    const/16 v10, 0x10

    const/16 v11, 0xf

    if-lez v2, :cond_0

    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, p2, v11

    aput p3, p2, v10

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput p3, p2, v9

    aput v6, p2, v8

    aput v6, p2, v7

    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v0, v2, v11

    aput v1, v2, v10

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v1, v2, v9

    aput v6, v2, v8

    aput v5, v2, v7

    aput v0, v2, v4

    const/16 v0, 0x15

    aput p3, v2, v0

    const/16 v0, 0x16

    aput v1, v2, v0

    const/16 v0, 0x17

    aput v6, v2, v0

    const/16 v0, 0x18

    aput v6, v2, v0

    const/16 v0, 0x19

    aput p2, v2, v0

    const/16 p2, 0x1a

    aput p3, v2, p2

    const/16 p2, 0x1b

    aput v1, v2, p2

    const/16 p2, 0x1c

    aput v5, v2, p2

    const/16 p2, 0x1d

    aput v6, v2, p2

    const/16 p2, 0x1e

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p11

    move/from16 v5, p12

    add-float v6, p2, v2

    add-float v7, p3, v3

    neg-float v8, v2

    neg-float v9, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_0

    cmpl-float v11, p9, v10

    if-eqz v11, :cond_1

    :cond_0
    mul-float v8, v8, p8

    mul-float v9, v9, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_1
    const/4 v11, 0x0

    cmpl-float v11, p10, v11

    if-eqz v11, :cond_2

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v11

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    mul-float v13, v11, v8

    mul-float v14, v12, v9

    sub-float v14, v13, v14

    mul-float/2addr v8, v12

    mul-float/2addr v9, v11

    add-float/2addr v9, v8

    mul-float v15, v12, v3

    sub-float/2addr v13, v15

    mul-float/2addr v3, v11

    add-float/2addr v8, v3

    mul-float/2addr v11, v2

    sub-float/2addr v11, v15

    mul-float/2addr v12, v2

    add-float/2addr v3, v12

    sub-float v2, v11, v13

    add-float/2addr v2, v14

    sub-float v12, v8, v9

    sub-float v12, v3, v12

    move/from16 v19, v12

    move v12, v2

    move v2, v11

    move v11, v3

    move v3, v8

    move v8, v14

    move/from16 v14, v19

    goto :goto_0

    :cond_2
    move v12, v2

    move v11, v3

    move v13, v8

    move v14, v9

    :goto_0
    add-float/2addr v8, v6

    add-float/2addr v9, v7

    add-float/2addr v13, v6

    add-float/2addr v3, v7

    add-float/2addr v2, v6

    add-float/2addr v11, v7

    add-float/2addr v12, v6

    add-float/2addr v14, v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v10, v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v10, v7

    int-to-float v7, v4

    mul-float/2addr v7, v6

    add-int v15, v5, p14

    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-int v4, v4, p13

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v5

    mul-float/2addr v5, v10

    if-eqz p15, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v19, v7

    move v7, v4

    move/from16 v4, v19

    :goto_1
    if-eqz p16, :cond_4

    move/from16 v19, v15

    move v15, v5

    move/from16 v5, v19

    :cond_4
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v10, 0x0

    aput v8, v6, v10

    const/16 v16, 0x1

    aput v9, v6, v16

    const/16 v16, 0x2

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v10, v6, v16

    const/16 v16, 0x3

    aput v4, v6, v16

    const/16 v16, 0x4

    aput v15, v6, v16

    const/16 v16, 0x5

    aput v13, v6, v16

    const/4 v13, 0x6

    aput v3, v6, v13

    const/4 v3, 0x7

    aput v10, v6, v3

    const/16 v3, 0x8

    aput v4, v6, v3

    const/16 v3, 0x9

    aput v5, v6, v3

    const/16 v3, 0xa

    aput v2, v6, v3

    const/16 v3, 0xb

    aput v11, v6, v3

    const/16 v3, 0xc

    aput v10, v6, v3

    const/16 v3, 0xd

    aput v7, v6, v3

    const/16 v3, 0xe

    aput v5, v6, v3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v3

    const/16 v6, 0x14

    const/16 v10, 0x13

    const/16 v13, 0x12

    const/16 v16, 0x11

    const/16 v17, 0x10

    const/16 v18, 0xf

    if-lez v3, :cond_5

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v12, v2, v18

    aput v14, v2, v17

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v3, v2, v16

    aput v7, v2, v13

    aput v15, v2, v10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v3, v18

    aput v11, v3, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v2, v3, v16

    aput v7, v3, v13

    aput v5, v3, v10

    aput v12, v3, v6

    const/16 v5, 0x15

    aput v14, v3, v5

    const/16 v5, 0x16

    aput v2, v3, v5

    const/16 v5, 0x17

    aput v7, v3, v5

    const/16 v5, 0x18

    aput v15, v3, v5

    const/16 v5, 0x19

    aput v8, v3, v5

    const/16 v5, 0x1a

    aput v9, v3, v5

    const/16 v5, 0x1b

    aput v2, v3, v5

    const/16 v2, 0x1c

    aput v4, v3, v2

    const/16 v2, 0x1d

    aput v15, v3, v2

    const/16 v2, 0x1e

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_2
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-int v7, v3, p9

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-int v2, v2, p8

    int-to-float v2, v2

    mul-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float v4, p2, p4

    add-float v5, p3, p5

    if-eqz p10, :cond_0

    move/from16 v16, v6

    move v6, v2

    move/from16 v2, v16

    :cond_0
    if-eqz p11, :cond_1

    move/from16 v16, v7

    move v7, v3

    move/from16 v3, v16

    :cond_1
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v9, 0x0

    aput p2, v8, v9

    const/4 v10, 0x1

    aput p3, v8, v10

    const/4 v10, 0x2

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v11, v8, v10

    const/4 v10, 0x3

    aput v6, v8, v10

    const/4 v10, 0x4

    aput v7, v8, v10

    const/4 v10, 0x5

    aput p2, v8, v10

    const/4 v10, 0x6

    aput v5, v8, v10

    const/4 v10, 0x7

    aput v11, v8, v10

    const/16 v10, 0x8

    aput v6, v8, v10

    const/16 v10, 0x9

    aput v3, v8, v10

    const/16 v10, 0xa

    aput v4, v8, v10

    const/16 v10, 0xb

    aput v5, v8, v10

    const/16 v10, 0xc

    aput v11, v8, v10

    const/16 v10, 0xd

    aput v2, v8, v10

    const/16 v10, 0xe

    aput v3, v8, v10

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v8

    const/16 v10, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    const/16 v15, 0xf

    if-lez v8, :cond_2

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v4, v3, v15

    aput p3, v3, v14

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v3, v13

    aput v2, v3, v12

    aput v7, v3, v11

    invoke-virtual {v0, v1, v3, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v4, v8, v15

    aput v5, v8, v14

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v5, v8, v13

    aput v2, v8, v12

    aput v3, v8, v11

    aput v4, v8, v10

    const/16 v3, 0x15

    aput p3, v8, v3

    const/16 v3, 0x16

    aput v5, v8, v3

    const/16 v3, 0x17

    aput v2, v8, v3

    const/16 v2, 0x18

    aput v7, v8, v2

    const/16 v2, 0x19

    aput p2, v8, v2

    const/16 v2, 0x1a

    aput p3, v8, v2

    const/16 v2, 0x1b

    aput v5, v8, v2

    const/16 v2, 0x1c

    aput v6, v8, v2

    const/16 v2, 0x1d

    aput v7, v8, v2

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIFFFFF)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    int-to-float v2, v2

    add-float/2addr v2, p2

    move/from16 v3, p5

    int-to-float v3, v3

    add-float/2addr v3, p3

    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v6, 0x1

    aput p3, v4, v6

    const/4 v6, 0x2

    aput p10, v4, v6

    const/4 v6, 0x3

    aput p6, v4, v6

    const/4 v6, 0x4

    aput p7, v4, v6

    const/4 v6, 0x5

    aput p2, v4, v6

    const/4 v6, 0x6

    aput v3, v4, v6

    const/4 v6, 0x7

    aput p10, v4, v6

    const/16 v6, 0x8

    aput p6, v4, v6

    const/16 v6, 0x9

    aput p9, v4, v6

    const/16 v6, 0xa

    aput v2, v4, v6

    const/16 v6, 0xb

    aput v3, v4, v6

    const/16 v6, 0xc

    aput p10, v4, v6

    const/16 v6, 0xd

    aput p8, v4, v6

    const/16 v6, 0xe

    aput p9, v4, v6

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v4

    const/16 v6, 0x14

    const/16 v7, 0x13

    const/16 v8, 0x12

    const/16 v9, 0x11

    const/16 v10, 0x10

    const/16 v11, 0xf

    if-lez v4, :cond_0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v3, v11

    aput p3, v3, v10

    aput p10, v3, v9

    aput p8, v3, v8

    aput p7, v3, v7

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v4, v11

    aput v3, v4, v10

    aput p10, v4, v9

    aput p8, v4, v8

    aput p9, v4, v7

    aput v2, v4, v6

    const/16 v2, 0x15

    aput p3, v4, v2

    const/16 v2, 0x16

    aput p10, v4, v2

    const/16 v2, 0x17

    aput p8, v4, v2

    const/16 v2, 0x18

    aput p7, v4, v2

    const/16 v2, 0x19

    aput p2, v4, v2

    const/16 v2, 0x1a

    aput p3, v4, v2

    const/16 v2, 0x1b

    aput p10, v4, v2

    const/16 v2, 0x1c

    aput p6, v4, v2

    const/16 v2, 0x1d

    aput p7, v4, v2

    const/16 v2, 0x1e

    invoke-virtual {p0, p1, v4, v5, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v2

    mul-float/2addr v8, v6

    add-int v9, v3, v5

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v6

    int-to-float v3, v3

    mul-float/2addr v3, v7

    int-to-float v4, v4

    add-float v4, p2, v4

    int-to-float v5, v5

    add-float v5, p3, v5

    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v7, 0x0

    aput p2, v6, v7

    const/4 v10, 0x1

    aput p3, v6, v10

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    const/4 v11, 0x2

    aput v10, v6, v11

    const/4 v11, 0x3

    aput v8, v6, v11

    const/4 v11, 0x4

    aput v9, v6, v11

    const/4 v11, 0x5

    aput p2, v6, v11

    const/4 v11, 0x6

    aput v5, v6, v11

    const/4 v11, 0x7

    aput v10, v6, v11

    const/16 v11, 0x8

    aput v8, v6, v11

    const/16 v11, 0x9

    aput v3, v6, v11

    const/16 v11, 0xa

    aput v4, v6, v11

    const/16 v11, 0xb

    aput v5, v6, v11

    const/16 v11, 0xc

    aput v10, v6, v11

    const/16 v10, 0xd

    aput v2, v6, v10

    const/16 v10, 0xe

    aput v3, v6, v10

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v6

    const/16 v10, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    const/16 v15, 0xf

    if-lez v6, :cond_0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v4, v3, v15

    aput p3, v3, v14

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v4, v3, v13

    aput v2, v3, v12

    aput v9, v3, v11

    invoke-virtual {v0, v1, v3, v7, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v4, v6, v15

    aput v5, v6, v14

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v5, v6, v13

    aput v2, v6, v12

    aput v3, v6, v11

    aput v4, v6, v10

    const/16 v3, 0x15

    aput p3, v6, v3

    const/16 v3, 0x16

    aput v5, v6, v3

    const/16 v3, 0x17

    aput v2, v6, v3

    const/16 v2, 0x18

    aput v9, v6, v2

    const/16 v2, 0x19

    aput p2, v6, v2

    const/16 v2, 0x1a

    aput p3, v6, v2

    const/16 v2, 0x1b

    aput v5, v6, v2

    const/16 v2, 0x1c

    aput v8, v6, v2

    const/16 v2, 0x1d

    aput v9, v6, v2

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x6

    if-lez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x5

    div-int v0, p4, v0

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/IntArray;->incr(II)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :goto_2
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "beginCache must be called before add."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v4, 0xf

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xa

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v6, 0x5

    invoke-static {v0, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-static {v0, v4, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x19

    invoke-static {v0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v1, 0x1e

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
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

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-float v2, p2, p4

    add-float v3, p3, p5

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v9, 0x0

    aput p2, v8, v9

    const/4 v10, 0x1

    aput p3, v8, v10

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    const/4 v11, 0x2

    aput v10, v8, v11

    const/4 v11, 0x3

    aput v4, v8, v11

    const/4 v11, 0x4

    aput v5, v8, v11

    const/4 v11, 0x5

    aput p2, v8, v11

    const/4 v11, 0x6

    aput v3, v8, v11

    const/4 v11, 0x7

    aput v10, v8, v11

    const/16 v11, 0x8

    aput v4, v8, v11

    const/16 v11, 0x9

    aput v7, v8, v11

    const/16 v11, 0xa

    aput v2, v8, v11

    const/16 v11, 0xb

    aput v3, v8, v11

    const/16 v11, 0xc

    aput v10, v8, v11

    const/16 v10, 0xd

    aput v6, v8, v10

    const/16 v10, 0xe

    aput v7, v8, v10

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v8

    const/16 v10, 0x14

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/16 v13, 0x11

    const/16 v14, 0x10

    const/16 v15, 0xf

    if-lez v8, :cond_0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v3, v15

    aput p3, v3, v14

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v2, v3, v13

    aput v6, v3, v12

    aput v5, v3, v11

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v2, v8, v15

    aput v3, v8, v14

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v3, v8, v13

    aput v6, v8, v12

    aput v7, v8, v11

    aput v2, v8, v10

    const/16 v2, 0x15

    aput p3, v8, v2

    const/16 v2, 0x16

    aput v3, v8, v2

    const/16 v2, 0x17

    aput v6, v8, v2

    const/16 v2, 0x18

    aput v5, v8, v2

    const/16 v2, 0x19

    aput p2, v8, v2

    const/16 v2, 0x1a

    aput p3, v8, v2

    const/16 v2, 0x1b

    aput v3, v8, v2

    const/16 v2, 0x1c

    aput v4, v8, v2

    const/16 v2, 0x1d

    aput v5, v8, v2

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    add-float v4, p2, v2

    add-float v5, p3, v3

    neg-float v6, v2

    neg-float v7, v3

    sub-float v2, p6, v2

    sub-float v3, p7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, p8, v8

    if-nez v9, :cond_0

    cmpl-float v8, p9, v8

    if-eqz v8, :cond_1

    :cond_0
    mul-float v6, v6, p8

    mul-float v7, v7, p9

    mul-float v2, v2, p8

    mul-float v3, v3, p9

    :cond_1
    const/4 v8, 0x0

    cmpl-float v8, p10, v8

    if-eqz v8, :cond_2

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v8

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    mul-float v10, v8, v6

    mul-float v11, v9, v7

    sub-float v11, v10, v11

    mul-float/2addr v6, v9

    mul-float/2addr v7, v8

    add-float/2addr v7, v6

    mul-float v12, v9, v3

    sub-float/2addr v10, v12

    mul-float/2addr v3, v8

    add-float/2addr v6, v3

    mul-float/2addr v8, v2

    sub-float/2addr v8, v12

    mul-float/2addr v9, v2

    add-float/2addr v3, v9

    sub-float v2, v8, v10

    add-float/2addr v2, v11

    sub-float v9, v6, v7

    sub-float v9, v3, v9

    move/from16 v19, v9

    move v9, v2

    move v2, v3

    move v3, v6

    move v6, v11

    move/from16 v11, v19

    goto :goto_0

    :cond_2
    move v8, v2

    move v9, v8

    move v2, v3

    move v10, v6

    move v11, v7

    :goto_0
    add-float/2addr v6, v4

    add-float/2addr v7, v5

    add-float/2addr v10, v4

    add-float/2addr v3, v5

    add-float/2addr v8, v4

    add-float/2addr v2, v5

    add-float/2addr v9, v4

    add-float/2addr v11, v5

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sget-object v14, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v15, 0x0

    aput v6, v14, v15

    const/16 v16, 0x1

    aput v7, v14, v16

    const/16 v16, 0x2

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v15, v14, v16

    const/16 v16, 0x3

    aput v4, v14, v16

    const/16 v16, 0x4

    aput v5, v14, v16

    const/16 v16, 0x5

    aput v10, v14, v16

    const/4 v10, 0x6

    aput v3, v14, v10

    const/4 v3, 0x7

    aput v15, v14, v3

    const/16 v3, 0x8

    aput v4, v14, v3

    const/16 v3, 0x9

    aput v13, v14, v3

    const/16 v3, 0xa

    aput v8, v14, v3

    const/16 v3, 0xb

    aput v2, v14, v3

    const/16 v3, 0xc

    aput v15, v14, v3

    const/16 v3, 0xd

    aput v12, v14, v3

    const/16 v3, 0xe

    aput v13, v14, v3

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v3

    const/16 v10, 0x14

    const/16 v14, 0x13

    const/16 v15, 0x12

    const/16 v16, 0x11

    const/16 v17, 0x10

    const/16 v18, 0xf

    if-lez v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v9, v2, v18

    aput v11, v2, v17

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v3, v2, v16

    aput v12, v2, v15

    aput v5, v2, v14

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    aput v8, v3, v18

    aput v2, v3, v17

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    aput v2, v3, v16

    aput v12, v3, v15

    aput v13, v3, v14

    aput v9, v3, v10

    const/16 v8, 0x15

    aput v11, v3, v8

    const/16 v8, 0x16

    aput v2, v3, v8

    const/16 v8, 0x17

    aput v12, v3, v8

    const/16 v8, 0x18

    aput v5, v3, v8

    const/16 v8, 0x19

    aput v6, v3, v8

    const/16 v6, 0x1a

    aput v7, v3, v6

    const/16 v6, 0x1b

    aput v2, v3, v6

    const/16 v2, 0x1c

    aput v4, v3, v2

    const/16 v2, 0x1d

    aput v5, v3, v2

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempVertices:[F

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_1
    return-void
.end method

.method public begin()V
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_proj"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_trans"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_projTrans"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_projectionViewMatrix"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "u_texture"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginCache()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;-><init>(II)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->compact()Ljava/nio/FloatBuffer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endCache must be called before begin."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginCache(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "endCache must be called before begin."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    mul-int/lit8 v0, v0, 0x5

    div-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_2

    aget v5, v1, v4

    aget-object v6, v0, v4

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7, v6, v2, v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v6, v7, v2, v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    :goto_2
    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SpriteCache.begin must be called before draw."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw(III)V
    .locals 9

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    mul-int/lit8 p2, p2, 0x6

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    add-int/2addr p2, v0

    mul-int/lit8 p3, p3, 0x6

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    aget v4, v1, v3

    if-le v4, p3, :cond_0

    move v4, p3

    move v3, v2

    goto :goto_1

    :cond_0
    sub-int/2addr p3, v4

    move v8, v4

    move v4, p3

    move p3, v8

    :goto_1
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v6, 0x4

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7, v5, v6, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v5, v7, v6, p2, p3}, Lcom/badlogic/gdx/graphics/Mesh;->render(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;III)V

    :goto_2
    add-int/2addr p2, p3

    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->renderCalls:I

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->totalRenderCalls:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SpriteCache.begin must be called before draw."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public end()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Mesh;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endCache()I
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_3

    :cond_1
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    if-gt v1, v2, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    array-length v1, v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v1, v2, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/Texture;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    :cond_2
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textures:[Lcom/badlogic/gdx/graphics/Texture;

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Texture;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    array-length v1, v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    if-ge v1, v2, :cond_4

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    :cond_4
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->textureCount:I

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->counts:[I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->caches:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->offset:I

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->currentCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->counts:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->id:I

    return v0

    :cond_6
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "If a cache is not the last created, it cannot be redefined with more entries than when it was first created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache$Cache;->maxCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " max)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "beginCache must be called before endCache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

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

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public setColor(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

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

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->color:F

    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set the matrix within begin/end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->customShader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->drawing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set the matrix within begin/end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
