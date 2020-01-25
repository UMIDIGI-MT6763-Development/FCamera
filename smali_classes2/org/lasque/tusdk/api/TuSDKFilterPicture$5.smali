.class Lorg/lasque/tusdk/api/TuSDKFilterPicture$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/api/TuSDKFilterPicture;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$5;->a:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$5;->a:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterPicture$5;->a:Lorg/lasque/tusdk/api/TuSDKFilterPicture;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterPicture;->o(Lorg/lasque/tusdk/api/TuSDKFilterPicture;)V

    return-void
.end method
