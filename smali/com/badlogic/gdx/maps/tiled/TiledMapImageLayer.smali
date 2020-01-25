.class public Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "TiledMapImageLayer.java"


# instance fields
.field private region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;II)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:I

    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:I

    return-void
.end method


# virtual methods
.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->y:I

    return v0
.end method
