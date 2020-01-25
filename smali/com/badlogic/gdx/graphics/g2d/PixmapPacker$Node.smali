.class final Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
.super Ljava/lang/Object;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field public leafName:Ljava/lang/String;

.field public leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

.field public rect:Lcom/badlogic/gdx/math/Rectangle;

.field public rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>(IIIILcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iput-object p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iput-object p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leafName:Ljava/lang/String;

    return-void
.end method
