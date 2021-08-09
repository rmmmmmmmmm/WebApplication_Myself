from django.forms import ModelForm
from django.template.defaulttags import comment

from commentapp.models import Comment


class CommentCreationForm(ModelForm):
    class Meta:
        model = Comment
        fields = ['content']
