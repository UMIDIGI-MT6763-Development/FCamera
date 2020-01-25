.class public Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static defaultFramebufferHandle:I

.field private static defaultFramebufferHandleInitialized:Z


# instance fields
.field protected colorTexture:Lcom/badlogic/gdx/graphics/Texture;

.field private depthbufferHandle:I

.field protected final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private framebufferHandle:I

.field protected final hasDepth:Z

.field protected final hasStencil:Z

.field protected final height:I

.field private stencilbufferHandle:I

.field protected final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandleInitialized:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {p1, p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V

    return-void
.end method

.method private static addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private build()V
    .locals 11

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandleInitialized:Z

    const/4 v7, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandleInitialized:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    const v1, 0x8ca6

    invoke-interface {v6, v1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    goto :goto_0

    :cond_0
    sput v7, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->setupTexture()V

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v0, :cond_2

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v0, :cond_3

    invoke-interface {v6}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v0

    const/16 v8, 0xde1

    invoke-interface {v6, v8, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    const v9, 0x8d41

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v6, v9, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    const v0, 0x81a5

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    invoke-interface {v6, v9, v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    :cond_4
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v6, v9, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    const v0, 0x8d48

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    invoke-interface {v6, v9, v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    const v10, 0x8d40

    invoke-interface {v6, v10, v0}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v0, :cond_6

    const v0, 0x8d00

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v6, v10, v0, v9, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    :cond_6
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v0, :cond_7

    const v0, 0x8d20

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v6, v10, v0, v9, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    :cond_7
    invoke-interface {v6, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v0

    invoke-interface {v6, v9, v7}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    invoke-interface {v6, v8, v7}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    sget v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v6, v10, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    const v1, 0x8cd5

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_8
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_9
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    const v1, 0x8cd6

    if-eq v0, v1, :cond_d

    const v1, 0x8cd9

    if-eq v0, v1, :cond_c

    const v1, 0x8cd7

    if-eq v0, v1, :cond_b

    const v1, 0x8cdd

    if-ne v0, v1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame buffer couldn\'t be constructed: unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, "Managed buffers/app: { "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/Application;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static unbind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->bind()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->setFrameBufferViewport()V

    return-void
.end method

.method public bind()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    return-void
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_2
    return-void
.end method

.method public end()V
    .locals 0

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->unbind()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->setDefaultFrameBufferViewport()V

    return-void
.end method

.method public end(IIII)V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->unbind()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    return v0
.end method

.method protected setDefaultFrameBufferViewport()V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method

.method protected setFrameBufferViewport()V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    return-void
.end method

.method protected setupTexture()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method
