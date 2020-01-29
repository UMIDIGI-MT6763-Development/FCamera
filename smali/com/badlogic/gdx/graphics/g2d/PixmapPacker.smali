.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    }
.end annotation


# static fields
.field private static final ANONYMOUS:Ljava/lang/String; = "ANONYMOUS"

.field private static final debug:Z


# instance fields
.field current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

.field disposed:Z

.field final duplicateBorder:Z

.field packToTexture:Z

.field final padding:I

.field final pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field final pageHeight:I

.field final pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->newPage()V

    return-void
.end method

.method private insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    .locals 3

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leafName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leafName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v0, v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v1, v1

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_5

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :goto_0
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method private newPage()V
    .locals 13

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>(IIIILcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    new-instance v1, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDuplicateBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public getPackToTexture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return v0
.end method

.method public getPadding()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pixmap has already been packed with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    iget-boolean v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    shl-int/2addr v2, v4

    new-instance v3, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v5, v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v5

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v5

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v1, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->newPage()V

    invoke-virtual/range {p0 .. p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    if-nez v0, :cond_6

    :try_start_2
    const-string v5, "ANONYMOUS"

    goto :goto_2

    :cond_6
    move-object v5, v0

    :goto_2
    iput-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leafName:Ljava/lang/String;

    new-instance v5, Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(Lcom/badlogic/gdx/math/Rectangle;)V

    iget v3, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v6, v2

    sub-float/2addr v3, v6

    iput v3, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v6

    iput v3, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    shr-int/2addr v2, v4

    iget v3, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    int-to-float v2, v2

    add-float/2addr v3, v2

    iput v3, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v3, v2

    iput v3, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    if-eqz v0, :cond_7

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, v0, v5}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    iget v0, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v0, v0

    iget v2, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v2, v2

    iget v3, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v3

    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v15, v6

    iget-boolean v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    if-eqz v6, :cond_8

    iget-boolean v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-nez v6, :cond_8

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    if-nez v6, :cond_8

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v7, v4, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v4

    move v9, v0

    move v10, v2

    move v11, v3

    move v12, v15

    move/from16 v16, v15

    move-object v15, v4

    invoke-interface/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_3

    :cond_8
    move/from16 v16, v15

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iput-boolean v4, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    :goto_3
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    move-object/from16 v15, p2

    invoke-virtual {v6, v15, v0, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    iget-boolean v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v6, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v28

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    add-int/lit8 v29, v0, -0x1

    add-int/lit8 v13, v2, -0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v17, v6

    move-object/from16 v18, p2

    move/from16 v23, v29

    move/from16 v24, v13

    invoke-virtual/range {v17 .. v26}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v30, v27, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    add-int v31, v0, v3

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v17, v6

    move-object/from16 v18, p2

    move/from16 v19, v30

    move/from16 v23, v31

    move/from16 v24, v13

    invoke-virtual/range {v17 .. v26}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v19, 0x0

    add-int/lit8 v32, v28, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    add-int v33, v2, v16

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v17, v6

    move-object/from16 v18, p2

    move/from16 v20, v32

    move/from16 v23, v29

    move/from16 v24, v33

    invoke-virtual/range {v17 .. v26}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v17, v6

    move-object/from16 v18, p2

    move/from16 v19, v30

    move/from16 v20, v32

    move/from16 v23, v31

    move/from16 v24, v33

    invoke-virtual/range {v17 .. v26}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v17, 0x1

    move-object/from16 v7, p2

    move/from16 v10, v27

    move v12, v0

    move v14, v3

    move/from16 v15, v17

    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x1

    move-object/from16 v7, p2

    move/from16 v9, v32

    move/from16 v10, v27

    move v12, v0

    move/from16 v13, v33

    move v14, v3

    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move/from16 v11, v28

    move/from16 v12, v29

    move v13, v2

    move/from16 v15, v16

    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->current:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move/from16 v8, v30

    move/from16 v11, v28

    move/from16 v12, v31

    move v13, v2

    move/from16 v15, v16

    invoke-virtual/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    :cond_9
    invoke-static {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_a
    :goto_4
    if-nez v0, :cond_b

    :try_start_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Page size too small for anonymous pixmap."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page size too small for pixmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPackToTexture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return-void
.end method

.method public declared-synchronized updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->updateTexture(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez p4, :cond_0

    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;

    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v2

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v2

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v6, v2

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v7, v1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    invoke-virtual {p1, v0, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    goto :goto_1

    :cond_1
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object p4

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    :goto_0
    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, p3, :cond_0

    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget p4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
