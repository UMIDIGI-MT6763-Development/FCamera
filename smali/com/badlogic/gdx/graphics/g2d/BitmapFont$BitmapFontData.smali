.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontData"
.end annotation


# instance fields
.field public ascent:F

.field public breakChars:[C

.field public capChars:[C

.field public capHeight:F

.field public descent:F

.field public down:F

.field public flipped:Z

.field public fontFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public imagePaths:[Ljava/lang/String;

.field public lineHeight:F

.field public markupEnabled:Z

.field public padBottom:F

.field public padLeft:F

.field public padRight:F

.field public padTop:F

.field public scaleX:F

.field public scaleY:F

.field public spaceWidth:F

.field public xChars:[C

.field public xHeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    return-void

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/16 v1, 0x80

    new-array v1, v1, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->load(Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-void

    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method


# virtual methods
.method public getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    return-object v7

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No glyphs found."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFile()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1ff

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;II)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v3, 0x0

    :goto_0
    if-ge p3, p4, :cond_3

    add-int/lit8 v4, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v5

    if-nez v5, :cond_0

    move p3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    if-nez v3, :cond_1

    iget v3, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v3, v6

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_1

    :cond_1
    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {v3, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v3

    add-int/2addr v6, v3

    int-to-float v3, v6

    mul-float/2addr v3, v1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :goto_1
    if-eqz v0, :cond_2

    const/16 v3, 0x5b

    if-ne p3, v3, :cond_2

    if-ge v4, p4, :cond_2

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-ne p3, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    move p3, v4

    goto :goto_2

    :cond_2
    move p3, v4

    :goto_2
    move-object v3, v5

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    iget p2, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    iget p3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    :cond_4
    return-void
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getImagePaths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, v0, :cond_3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isBreakChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/2addr p2, v0

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public hasGlyph(C)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBreakChar(C)Z
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->breakChars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v0, v3

    if-ne p1, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isWhitespace(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    if-nez v2, :cond_27

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string v4, "padding="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    const/4 v7, 0x4

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-ne v5, v7, :cond_25

    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    const/4 v5, 0x1

    aget-object v8, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    const/4 v8, 0x2

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iput v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    const/4 v9, 0x3

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v3, v10

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    const-string v11, " "

    const/4 v12, 0x7

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-lt v11, v9, :cond_23

    aget-object v11, v10, v5

    const-string v12, "lineHeight="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_22

    aget-object v11, v10, v5

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    iput v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    aget-object v11, v10, v8

    const-string v12, "base="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    aget-object v11, v10, v8

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    array-length v13, v10

    const/4 v14, 0x6

    if-lt v13, v14, :cond_0

    aget-object v13, v10, v12

    if-eqz v13, :cond_0

    aget-object v13, v10, v12

    const-string v15, "pages="

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    :try_start_1
    aget-object v10, v10, v12

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    move v10, v5

    :goto_0
    :try_start_2
    new-array v13, v10, [Ljava/lang/String;

    iput-object v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    move v13, v6

    :goto_1
    if-ge v13, v10, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    const-string v6, " "

    invoke-virtual {v15, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v15, v6, v8

    const-string v7, "file="

    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v6, v5

    const-string v15, "id="

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    :try_start_3
    aget-object v7, v6, v5

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v13, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Page IDs must be indices starting at 0: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v6, v5

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid page id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v6, v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    :goto_2
    aget-object v7, v6, v8

    const-string v15, "\""

    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v7, v6, v8

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v7, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    aget-object v7, v6, v8

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_3
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    const-string v15, "\\\\"

    const-string v5, "/"

    invoke-virtual {v6, v15, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    goto/16 :goto_1

    :cond_4
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing: file"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing additional page definitions."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    const/4 v5, 0x0

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const v6, 0xffff

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    const-string v7, "kernings "

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    :goto_5
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    add-float/2addr v5, v7

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    :cond_9
    :goto_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    const-string v7, "kerning "

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    :goto_7
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    iput v4, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    const/16 v6, 0x6c

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    :cond_b
    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    iput v6, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    :cond_c
    iget v4, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v4, :cond_d

    iget v4, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v4, v4

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    :cond_d
    iget v4, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v4, v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_8
    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    array-length v7, v7

    if-ge v5, v7, :cond_f

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xChars:[C

    aget-char v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    if-nez v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v6

    :cond_10
    iget v5, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    move-object v5, v4

    const/4 v4, 0x0

    :goto_a
    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    array-length v6, v6

    if-ge v4, v6, :cond_12

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capChars:[C

    aget-char v5, v5, v4

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v5

    if-eqz v5, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    if-nez v5, :cond_17

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_18

    aget-object v7, v4, v6

    if-nez v7, :cond_13

    goto :goto_f

    :cond_13
    array-length v8, v7

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v8, :cond_16

    aget-object v10, v7, v9

    if-eqz v10, :cond_15

    iget v12, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v12, :cond_15

    iget v12, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v12, :cond_14

    goto :goto_e

    :cond_14
    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget v10, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v10, v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    :cond_15
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_16
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_17
    iget v4, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v4, v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    :cond_18
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v4, v3

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    sub-float/2addr v11, v3

    iput v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    neg-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    if-eqz p2, :cond_19

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    neg-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    neg-float v3, v3

    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_19
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_1a
    :try_start_5
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " ="

    invoke-direct {v7, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ltz v5, :cond_9

    if-gt v5, v6, :cond_9

    if-ltz v8, :cond_9

    if-le v8, v6, :cond_1b

    goto/16 :goto_6

    :cond_1b
    int-to-char v5, v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v5, :cond_9

    invoke-virtual {v5, v8, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    goto/16 :goto_6

    :cond_1c
    const-string v7, "char "

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1d

    goto/16 :goto_4

    :cond_1d
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, " ="

    invoke-direct {v8, v5, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v6, :cond_7

    invoke-virtual {v1, v5, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    if-eqz p2, :cond_1e

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_10

    :cond_1e
    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v5, v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    :goto_10
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_1f
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_20

    :try_start_6
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    :cond_20
    :try_start_7
    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-lez v5, :cond_7

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-lez v5, :cond_7

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v5, v5

    add-float/2addr v5, v11

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    goto/16 :goto_4

    :cond_21
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing: base"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_22
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing: lineHeight"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_23
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Invalid common header."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Missing common header."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Invalid padding."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_26
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "File is empty."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v3, v0

    :try_start_8
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading font file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_11
    invoke-static {v2}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_27
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already loaded."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scale(F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    return-void
.end method

.method public setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    aput-object v2, v0, v1

    :cond_0
    and-int/lit16 p1, p1, 0x1ff

    aput-object p2, v2, p1

    return-void
.end method

.method public setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 13

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v3, p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    instance-of v6, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget v6, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    iget v8, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    iget v9, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    sub-float p2, v8, p2

    goto :goto_0

    :cond_0
    move p2, v7

    move v6, p2

    :goto_0
    iget v8, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    int-to-float v8, v8

    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iget v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v10, v10

    iget v11, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v12, v6, v7

    if-lez v12, :cond_3

    sub-float/2addr v8, v6

    cmpg-float v12, v8, v7

    if-gez v12, :cond_1

    iget v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v12, v12

    add-float/2addr v12, v8

    float-to-int v12, v12

    iput v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v12, v12

    sub-float/2addr v12, v8

    float-to-int v8, v12

    iput v8, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    move v8, v7

    :cond_1
    sub-float v6, v9, v6

    cmpl-float v9, v6, v4

    if-lez v9, :cond_2

    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v9, v9

    sub-float/2addr v6, v4

    sub-float/2addr v9, v6

    float-to-int v6, v9

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v9

    :goto_1
    cmpl-float v6, p2, v7

    if-lez v6, :cond_5

    sub-float v6, v10, p2

    cmpg-float v9, v6, v7

    if-gez v9, :cond_4

    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v9, v9

    add-float/2addr v9, v6

    float-to-int v6, v9

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move v10, v7

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_2
    sub-float p2, v11, p2

    cmpl-float v6, p2, v5

    if-lez v6, :cond_6

    sub-float/2addr p2, v5

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v6

    sub-float/2addr v6, p2

    float-to-int v6, v6

    iput v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v6, v6

    add-float/2addr v6, p2

    float-to-int p2, v6

    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    move p2, v5

    goto :goto_3

    :cond_5
    move p2, v11

    :cond_6
    :goto_3
    mul-float/2addr v8, v1

    add-float/2addr v8, v0

    iput v8, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v0, :cond_7

    mul-float/2addr v10, v2

    add-float/2addr v10, v3

    iput v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    mul-float/2addr p2, v2

    add-float/2addr v3, p2

    iput v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    goto :goto_4

    :cond_7
    mul-float/2addr v10, v2

    add-float/2addr v10, v3

    iput v10, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    mul-float/2addr p2, v2

    add-float/2addr v3, p2

    iput v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    :goto_4
    return-void
.end method

.method public setLineHeight(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    neg-float p1, p1

    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(FF)V

    return-void
.end method

.method public setScale(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float v1, p2, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padTop:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padBottom:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleY cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scaleX cannot be 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
