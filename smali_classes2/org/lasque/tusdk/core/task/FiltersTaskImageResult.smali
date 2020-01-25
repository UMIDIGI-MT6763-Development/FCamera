.class public Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->b:Ljava/lang/String;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->a:Landroid/graphics/Bitmap;

    return-void
.end method
