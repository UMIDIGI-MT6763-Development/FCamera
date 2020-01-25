.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

.field final synthetic c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field final synthetic d:Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->d:Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->b:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iput-object p4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->d:Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;

    iget-object v1, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->e:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->d:Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;

    iget-object v3, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->b:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iget-object v4, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->b:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->d:Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;

    iget-object v5, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->c:Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->d:Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;

    iget-object v6, v0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5;->d:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Landroid/graphics/Bitmap;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$5$1;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    return-void
.end method
