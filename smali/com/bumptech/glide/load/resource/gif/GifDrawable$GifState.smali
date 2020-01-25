.class Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifState"
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77


# instance fields
.field bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field context:Landroid/content/Context;

.field data:[B

.field firstFrame:Landroid/graphics/Bitmap;

.field frameTransformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field targetHeight:I

.field targetWidth:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifHeader;[BLandroid/content/Context;Lcom/bumptech/glide/load/Transformation;IILcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/gifdecoder/GifHeader;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p9, :cond_0

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iput-object p8, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p9, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    iput p5, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iput p6, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iput-object p7, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The first frame of the GIF must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->gifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->data:[B

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->frameTransformation:Lcom/bumptech/glide/load/Transformation;

    iget v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetWidth:I

    iget v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->targetHeight:I

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->firstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable$GifState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
