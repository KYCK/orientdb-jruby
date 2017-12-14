module OrientDB
  class OrientGraph
    def outside_tx
      execute_outside_tx(->(_) { yield self }, [].to_java(:string))
    end

    java_alias :__create_vertex_type, :createVertexType, [java.lang.String]
    java_alias :__create_edge_type,   :createEdgeType,   [java.lang.String]

    def create_vertex_type(vt)
      outside_tx { __create_vertex_type(vt) }
    end

    def ensure_vertex_type(vt)
      create_vertex_type(vt) unless get_vertex_type(vt)
    end

    def create_edge_type(et)
      outside_tx { __create_edge_type(et) }
    end

    def ensure_edge_type(et)
      create_edge_type(et) unless get_edge_type(et)
    end
  end
end
