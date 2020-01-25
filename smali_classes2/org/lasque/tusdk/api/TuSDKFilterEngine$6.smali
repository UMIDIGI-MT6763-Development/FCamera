.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Landroid/graphics/Bitmap;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

.field final synthetic b:[Lorg/lasque/tusdk/core/face/FaceAligment;

.field final synthetic c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;[Lorg/lasque/tusdk/core/face/FaceAligment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;->c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iput-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;->b:[Lorg/lasque/tusdk/core/face/FaceAligment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;->b:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$6;->c:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-static {v2}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->h(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_0
    return-void
.end method
