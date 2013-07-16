package {{.SecondName}}

import (
	"testing"
)

var (
	msgFail = "%v method fails. Expects %v, returns %v"
	ex 			= My{{.SecondName}}Example{id: 1, name: "foo"}
)

func TestNew(t *testing.T) {
	if exNew, err := New(1, "foo"); err != nil {
		t.Errorf("%v", err)
	} else if *exNew != ex {
		t.Errorf(msgFail, "New", ex, *exNew)
	}
}

func TestId(t *testing.T) {
	if id := ex.Id(); id != 1 {
		t.Errorf(msgFail, "Id", 1, id)
	}
}

func TestName(t *testing.T) {
	if name := ex.Name(); name != "foo" {
		t.Errorf(msgFail, "Name", "foo", name)
	}
}

func TestSetId(t *testing.T) {
	ex.SetId(2)
	if id := ex.Id(); id != 2 {
		t.Errorf(msgFail, "SetId", 2, id)
	}
}

func TestSetName(t *testing.T) {
	ex.SetName("bar")
	if name := ex.Name(); name != "bar" {
		t.Errorf(msgFail, "SetName", "bar", name)
	}
}
