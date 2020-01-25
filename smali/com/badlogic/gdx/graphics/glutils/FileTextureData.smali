.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureData;
.super Ljava/lang/Object;
.source "FileTextureData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# static fields
.field public static copyToPOT:Z


# instance fields
.field final file:Lcom/badlogic/gdx/files/FileHandle;

.field format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field height:I

.field isPrepared:Z

.field pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field useMipMaps:Z

.field width:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->useMipMaps:Z

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->ensurePot(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    :cond_0
    return-void
.end method

.method private ensurePot(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 10

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->copyToPOT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    if-ne v7, v0, :cond_0

    if-eq v8, v1, :cond_1

    :cond_0
    new-instance v9, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-direct {v9, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    return-object v9

    :cond_1
    return-object p1
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "This TextureData implementation does not upload data itself"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call prepare() before calling getPixmap()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFileHandle()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->extension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->file:Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->ensurePot(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->width:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->height:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->isPrepared:Z

    return-void

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->useMipMaps:Z

    return v0
.end method
