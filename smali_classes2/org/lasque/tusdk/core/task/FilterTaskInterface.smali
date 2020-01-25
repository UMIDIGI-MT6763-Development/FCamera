.class public interface abstract Lorg/lasque/tusdk/core/task/FilterTaskInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract appendFilterCode(Ljava/lang/String;)V
.end method

.method public abstract cancelLoadImage(Landroid/widget/ImageView;)V
.end method

.method public abstract isRenderFilterThumb()Z
.end method

.method public abstract loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
.end method

.method public abstract resetQueues()V
.end method

.method public abstract setFilerNames(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInputImage(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setRenderFilterThumb(Z)V
.end method

.method public abstract start()V
.end method
