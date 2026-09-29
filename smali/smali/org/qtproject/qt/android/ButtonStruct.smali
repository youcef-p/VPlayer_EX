###### Class org.qtproject.qt.android.ButtonStruct (org.qtproject.qt.android.ButtonStruct)
.class Lorg/qtproject/qt/android/ButtonStruct;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final m_dialog:Lorg/qtproject/qt/android/QtMessageDialogHelper;

.field private final m_id:I

.field final m_text:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;ILjava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_dialog:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    .line 38
    iput p2, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_id:I

    const/4 p1, 0x0

    .line 39
    invoke-static {p3, p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 47
    iget-object p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_dialog:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->handler()J

    move-result-wide v0

    iget p1, p0, Lorg/qtproject/qt/android/ButtonStruct;->m_id:I

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtNativeDialogHelper;->dialogResult(JI)V

    return-void
.end method
