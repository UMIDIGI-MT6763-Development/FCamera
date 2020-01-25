.class public final Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;
.super Ljava/lang/Object;
.source "DefaultTextureBinder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# static fields
.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I = 0x0

.field public static final WEIGHTED:I = 0x1


# instance fields
.field private bindCount:I

.field private final count:I

.field private currentTexture:I

.field private final method:I

.field private final offset:I

.field private reuseCount:I

.field private final reuseWeight:I

.field private reused:Z

.field private final tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field private final textures:[Lcom/badlogic/gdx/graphics/GLTexture;

.field private final weights:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->getMaxTextureUnits()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gez p3, :cond_0

    sub-int p3, v0, p2

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-gt v1, v0, :cond_2

    const/4 v0, 0x1

    if-lt p4, v0, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    new-array p2, p3, [Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseWeight:I

    if-ne p1, v0, :cond_1

    new-array p1, p3, [I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    return-void

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Illegal arguments"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I
    .locals 3

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    packed-switch v1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureWeighted(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x84c0

    add-int/2addr v2, v1

    invoke-interface {p2, v2}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    :goto_1
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, p2, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, p2, p1}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v3, v0

    rem-int/2addr v3, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v1, v1, v3

    if-ne v1, p1, :cond_0

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v0, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    return p1
.end method

.method private final bindTextureWeighted(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    move v3, v0

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v4, v2, v1

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseWeight:I

    add-int/2addr v4, v5

    aput v4, v2, v1

    move v2, v1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v6, v4, v1

    if-ltz v6, :cond_1

    aget v6, v4, v1

    sub-int/2addr v6, v5

    aput v6, v4, v1

    if-ge v6, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v0, v0, v1

    move v3, v0

    move v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/16 v2, 0x64

    aput v2, v1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    goto :goto_2

    :cond_4
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    move v0, v2

    :goto_2
    return v0
.end method

.method private static getMaxTextureUnits()I
    .locals 3

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8872

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public begin()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    if-eqz v2, :cond_0

    aput v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result p1

    return p1
.end method

.method public end()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    return-void
.end method

.method public final getBindCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return v0
.end method

.method public final getReuseCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    return v0
.end method

.method public final resetCounts()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return-void
.end method
